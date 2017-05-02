cask 'cuda' do
  version '8.0.61'
  sha256 'b70a193cbe0a798d7363abab88ab5190409d237d7e13bf8682682fbbeac01847'

  url "https://developer.nvidia.com/compute/cuda/#{version.major_minor}/Prod2/local_installers/cuda_#{version}_mac-dmg"
  name 'Nvidia CUDA'
  homepage 'https://developer.nvidia.com/cuda-zone'

  installer script: {
                      executable: 'CUDAMacOSXInstaller.app/Contents/MacOS/CUDAMacOSXInstaller',
                      args:       ['--accept-eula', '--silent'],
                    }

  uninstall script: {
                      executable: "/Developer/NVIDIA/CUDA-#{version.major_minor}/bin/uninstall_cuda_#{version.major_minor}.pl",
                      sudo:       true,
                    }
end
