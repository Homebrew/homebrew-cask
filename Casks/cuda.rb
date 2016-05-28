cask 'cuda' do
  version '7.5.27'
  sha256 'ff3699703a914ba6f71f76bc412cc4cc2cb8ce6fca435044d8780602b5a32e89'

  url "http://developer.download.nvidia.com/compute/cuda/#{version.to_f}/Prod/local_installers/cuda_#{version}_mac.dmg"
  name 'Nvidia CUDA'
  homepage 'https://developer.nvidia.com/cuda-zone'
  license :other

  installer script: 'CUDAMacOSXInstaller.app/Contents/MacOS/CUDAMacOSXInstaller',
            args:   ['--accept-eula', '--silent']

  uninstall script: "/Developer/NVIDIA/CUDA-#{version.to_f}/bin/uninstall_cuda_#{version.to_f}.pl"
end
