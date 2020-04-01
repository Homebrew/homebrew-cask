cask 'kodelife' do
  version '0.9.0.129'
  sha256 '7442e62ba5628fcaf65db987677acc7ff361ee9abca8296af751ff3eaab11b39'

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-macos.zip"
  appcast 'https://hexler.net/pub/kodelife/appcast.hex'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true

  app 'KodeLife.app'
end
