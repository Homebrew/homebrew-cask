cask 'kodelife' do
  version '0.5.7.0'
  sha256 '462dc21d75e56eeb057e4899b9674fcf1b0c9b4ee5583c9d5765a9cf2834d4a0'

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-osx.zip"
  appcast 'https://hexler.net/pub/kodelife/appcast.hex'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'KodeLife.app'
end
