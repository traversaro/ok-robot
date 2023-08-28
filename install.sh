mamba create -n home_engine python=3.10
mamba activate home_engine
mamba install -y -c "nvidia/label/cuda-11.8.0" -c pytorch -c nvidia cuda-toolkit pytorch torchvision torchaudio
python -m pip install -r requirements.txt
cd clip-fields/gridencoder/
python setup.py install
cd ../..
cd lerf
python -m pip install -e .
cd ..
cd usa
pip install -e .
