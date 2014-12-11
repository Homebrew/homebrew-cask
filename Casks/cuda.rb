cask :v1 => 'cuda' do
  version '6.5.14'
  sha256 '6cdde2417bedbd889143c5d3f0152fce4088102ecf4ccfa83e9f14a08968fcb7'

  url "http://developer.download.nvidia.com/compute/cuda/6_5/rel/installers/cuda_#{version}_mac_64.pkg"
  homepage 'https://developer.nvidia.com/cuda-zone'
  license :other

  pkg "cuda_#{version}_mac_64.pkg"
  uninstall :pkgutil => 'com.nvidia.cuda.*',
            :kext => 'com.nvidia.CUDA',
            :delete => ['/Developer/NVIDIA/CUDA-6.5',
                        '/usr/local/cuda']
end
