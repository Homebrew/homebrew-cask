cask 'kodelife' do
  version '0.8.7.105'
  sha256 '1b3568538672a4afa0c1399b000cf8301b4b207b5633e2a0d83de586b2cd3bb8'

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-macos.zip"
  appcast 'https://hexler.net/pub/kodelife/appcast.hex'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true

  app 'KodeLife.app'
end
