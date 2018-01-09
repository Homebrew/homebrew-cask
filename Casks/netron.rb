cask 'netron' do
  version '1.3.0'
  sha256 '3d0648357bee47cce3e4ef9bc543b4a93326f87eaf3a909da96a0731c124ee2f'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '1f35f23b60a9ba52fae875dc1004b46da57375b3692ffd2f920883ae39628330'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
