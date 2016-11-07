cask 'cuda' do
  version '8.0.51'
  sha256 '16e567c09bac3fdb1ac34685ce862bb372322214a86d0ab05dce8b983e50d47d'

  url "http://us.download.nvidia.com/Mac/Quadro_Certified/#{version}/cudadriver-#{version}-macos.dmg"
  name 'Nvidia CUDA'
  homepage 'https://developer.nvidia.com/cuda-zone'

  installer script: 'CUDAMacOSXInstaller.app/Contents/MacOS/CUDAMacOSXInstaller',
            args:   ['--accept-eula', '--silent']

  uninstall script: "/Developer/NVIDIA/CUDA-#{version.major_minor}/bin/uninstall_cuda_#{version.major_minor}.pl"
end
