cask 'kodelife' do
  version '0.7.8.76'
  sha256 '04fa1433d42c882750eaa885b897ace1daf8881b2d92610827f69a8a64d6637e'

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-macos.zip"
  appcast 'https://hexler.net/pub/kodelife/appcast.hex'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true

  app 'KodeLife.app'
end
