cask 'kodelife' do
  version '0.7.6.61'
  sha256 '198ddb2c3010d3f61c9b96d27c028b1b880bd63ebdc6f1cb14e8ba05be6ed895'

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-macos.zip"
  appcast 'https://hexler.net/pub/kodelife/appcast.hex'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true

  app 'KodeLife.app'
end
