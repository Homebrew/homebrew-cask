cask 'cuda' do
  version '8.0.47'
  sha256 '6866465217e88f7d0c17c202c4aa21281bd56671b863d810efa870d2bbed0a54'

  url "https://developer.nvidia.com/compute/cuda/#{version.major_minor}/Prod/local_installers/cuda_#{version}_mac-dmg"
  name 'Nvidia CUDA'
  homepage 'https://developer.nvidia.com/cuda-zone'

  installer script: 'CUDAMacOSXInstaller.app/Contents/MacOS/CUDAMacOSXInstaller',
            args:   ['--accept-eula', '--silent']

  uninstall script: "/Developer/NVIDIA/CUDA-#{version.major_minor}/bin/uninstall_cuda_#{version.major_minor}.pl"
end
