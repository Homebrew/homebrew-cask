cask 'netron' do
  version '1.7.1'
  sha256 'b0fc8bbf098d802b68c81e2abf572678806d32faa225e863008d3dbd316d7f5b'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '5c2b2d67fc3232837eb5785a444122f1fc2686b5af412394bba096c1b08baf95'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
