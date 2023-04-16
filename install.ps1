if (!(Test-Path -Path "venv")) {
    Write-Output  "Creating venv..."
    python -m venv venv
}
.\venv\Scripts\activate

Write-Output "Installing deps..."

# CUDA 11.6
# pip install torch==1.13.1+cu116 torchvision==0.14.1+cu116 torchaudio==0.13.1 --extra-index-url https://download.pytorch.org/whl/cu116
# CUDA 11.7
# pip install torch==1.13.1+cu117 torchvision==0.14.1+cu117 torchaudio==0.13.1 --extra-index-url https://download.pytorch.org/whl/cu117
# CUDA 11.8
pip install torch==2.0.0+cu118 torchvision==0.15.1+cu118 torchaudio==2.0.1+cu118 --extra-index-url https://download.pytorch.org/whl/cu118

pip install --upgrade -r requirements.txt

Write-Output "Install completed"
Read-Host | Out-Null ;