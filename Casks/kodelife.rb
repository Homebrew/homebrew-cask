cask 'kodelife' do
  version '0.8.0.88'
  sha256 '05b36deb59b7dc28445060ff00e41ea14a2370e4ca8239abee261ede0c6ad8aa'

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-macos.zip"
  appcast 'https://hexler.net/pub/kodelife/appcast.hex'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true

  app 'KodeLife.app'
end
