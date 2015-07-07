cask :v1 => 'cuda' do
  version '7.0.29'
  sha256 'e564b1f34a9079ff842b3a055016133347e3c5e8d7feea05b0b69e4ca090007a'

  url "http://developer.download.nvidia.com/compute/cuda/7_0/Prod/local_installers/cuda_#{version}_mac.pkg"
  name 'CUDA'
  homepage 'https://developer.nvidia.com/cuda-zone'
  license :other
  tags :vendor => 'Nvidia'

  pkg "cuda_#{version}_mac.pkg"

  uninstall :pkgutil => 'com.nvidia.cuda.*',
            :kext => 'com.nvidia.CUDA',
            :delete => [
                        '/Developer/NVIDIA/CUDA-7.0',
                        '/usr/local/cuda',
                       ]
end
