cask 'kodelife' do
  version '0.8.6.101'
  sha256 '41075265832c171c7e45ea5733ea1a3d3e8170e5874828752e77c0966f540e0c'

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-macos.zip"
  appcast 'https://hexler.net/pub/kodelife/appcast.hex'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true

  app 'KodeLife.app'
end
