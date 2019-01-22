cask 'kodelife' do
  version '0.7.5.57'
  sha256 '2cc81702d042ce83fa34d41812598356cff27fb1fc061d883cbd80827dbe1344'

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-macos.zip"
  appcast 'https://hexler.net/pub/kodelife/appcast.hex'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'KodeLife.app'
end
