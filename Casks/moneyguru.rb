cask 'moneyguru' do
  version '2.10.2'
  sha256 '379e3a556e484531315facc7fbea286fd1b3b30dcdb2e5d95cea7d817e8fde1d'

  url "https://download.hardcoded.net/moneyguru_osx_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.hardcoded.net/updates/moneyguru.appcast'
  name 'moneyGuru'
  homepage 'https://www.hardcoded.net/moneyguru/'

  app 'moneyGuru.app'
end
