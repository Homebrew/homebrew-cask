cask 'kodelife' do
  version '0.7.10.83'
  sha256 'fa08921609c413cdd38153cb2012a14c28dbf43381237f63c4d45a936ce8f47e'

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-macos.zip"
  appcast 'https://hexler.net/pub/kodelife/appcast.hex'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true

  app 'KodeLife.app'
end
