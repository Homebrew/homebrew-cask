cask 'netron' do
  version '3.9.7'
  sha256 'db8e096228d07c0aef18eb2c37aac73483ddf6219115fe18991996a44a4c974d'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end
