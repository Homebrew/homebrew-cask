cask 'kodelife' do
  version '0.8.5.99'
  sha256 'f3471e567c7ce6564443e3934ecc956709b56c0779d688d6daff610bb23dbbd9'

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-macos.zip"
  appcast 'https://hexler.net/pub/kodelife/appcast.hex'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true

  app 'KodeLife.app'
end
