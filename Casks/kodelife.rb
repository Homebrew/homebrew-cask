cask 'kodelife' do
  version '0.8.10.122'
  sha256 '3bacdb848a1d1eca4b299123d125feb76dc710d1108e1f61bef9fbcc991cdcaa'

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-macos.zip"
  appcast 'https://hexler.net/pub/kodelife/appcast.hex'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true

  app 'KodeLife.app'
end
