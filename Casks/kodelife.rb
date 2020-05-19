cask 'kodelife' do
  version '0.9.2.134'
  sha256 '99059e98f5cdc60ecc2d298fb791506811653be9481dee49d84ef7ef53db2cd2'

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-macos.zip"
  appcast 'https://hexler.net/pub/kodelife/appcast.hex'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true

  app 'KodeLife.app'
end
