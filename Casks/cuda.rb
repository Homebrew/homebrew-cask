cask 'cuda' do
  version '8.0.55'
  sha256 'bd9f6a525916ab9c5774a67a89004bbd8e38334f66c37ff2ab4bc82003b7e57d'

  url "https://developer.nvidia.com/compute/cuda/#{version.major_minor}/Prod/local_installers/cuda_#{version}_mac-dmg"
  name 'Nvidia CUDA'
  homepage 'https://developer.nvidia.com/cuda-zone'

  installer script: 'CUDAMacOSXInstaller.app/Contents/MacOS/CUDAMacOSXInstaller',
            args:   ['--accept-eula', '--silent']

  uninstall script: "/Developer/NVIDIA/CUDA-#{version.major_minor}/bin/uninstall_cuda_#{version.major_minor}.pl"
end
