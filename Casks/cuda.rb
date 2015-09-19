cask :v1 => 'cuda' do
  version '7.5.18'
  sha256 '0a41f9abf0a96b9fa2d41b949054a63c916728bf320fd886d895f48f701d03ea'

  url "http://developer.download.nvidia.com/compute/cuda/7.5/Prod/local_installers/cuda_#{version}_mac.dmg"
  name 'CUDA'
  homepage 'https://developer.nvidia.com/cuda-zone'
  license :other
  tags :vendor => 'Nvidia'

  installer :manual => "CUDAMacOSXInstaller.app"
end
