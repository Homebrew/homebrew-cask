cask 'kodelife' do
  version '0.8.3.93'
  sha256 '7d09e58609fbeb83eee7f6fceb0abaeb1a46c201c9e0d49786a42510a59c0d48'

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-macos.zip"
  appcast 'https://hexler.net/pub/kodelife/appcast.hex'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true

  app 'KodeLife.app'
end
