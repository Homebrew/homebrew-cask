cask :v1 => 'cuda' do
  version '7.5.20'
  sha256 '53a569d2cbdf43942245ce356ee5851ccf1dbf55e15a035ad0aa95a0b7739181'

  url "http://developer.download.nvidia.com/compute/cuda/#{version.to_f}/Prod/local_installers/cuda_#{version}_mac.dmg"
  name 'CUDA'
  homepage 'https://developer.nvidia.com/cuda-zone'
  license :other
  tags :vendor => 'Nvidia'

  installer :script => 'CUDAMacOSXInstaller.app/Contents/MacOS/CUDAMacOSXInstaller',
            :args => [ '--accept-eula', '--silent' ]

  uninstall :script => "/Developer/NVIDIA/CUDA-#{version.to_f}/bin/uninstall_cuda_#{version.to_f}.pl"
end
