cask 'kodelife' do
  version '0.9.3.135'
  sha256 'db29fbd6b8cadcae9cd438f73d8c236e2f6cca859dab42b76fde01a8b1305c31'

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-macos.zip"
  appcast 'https://hexler.net/pub/kodelife/appcast.hex'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true

  app 'KodeLife.app'
end
