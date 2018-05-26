cask 'kodelife' do
  version '0.5.6.0'
  sha256 'd4c24c7adb722ac48760ed03dda711d268bfe2ca717f42812ede64adf00e7a34'

  url "https://hexler.net/pub/kodelife/kodelife-#{version}-osx.zip"
  appcast 'https://hexler.net/pub/kodelife/appcast.hex',
          checkpoint: '54380147b0e6de7730cc7f7a557fdc328a62227f60649cf58225c38d0fe1b010'
  name 'KodeLife'
  homepage 'https://hexler.net/software/kodelife'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'KodeLife.app'
end
