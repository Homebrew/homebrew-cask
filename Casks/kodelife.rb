cask 'kodelife' do
  version '0.8.2.92'
  sha256 'f4a79d82e1bb239195f590068b33ecbff64ebdb0ec1e573387bd5e18cf01e822'

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-macos.zip"
  appcast 'https://hexler.net/pub/kodelife/appcast.hex'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true

  app 'KodeLife.app'
end
