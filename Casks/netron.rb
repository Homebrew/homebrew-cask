cask 'netron' do
  version '1.1.1'
  sha256 '45b101fd76c5d9c282f94dbfca30b49cb21d288b335a4356db0ff7f466b09eeb'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: 'd75c95a321100e6111802c46b2599c4053f8787b5d0a446ef4eef709034af1cd'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
