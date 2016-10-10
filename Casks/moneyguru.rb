cask 'moneyguru' do
  version '2.10.2'
  sha256 '379e3a556e484531315facc7fbea286fd1b3b30dcdb2e5d95cea7d817e8fde1d'

  url "https://download.hardcoded.net/moneyguru_osx_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.hardcoded.net/updates/moneyguru.appcast',
          checkpoint: '42cc3e6d1ff4aed7cd2106b6287c1c9111f5438a2d0daf620b80faf8e6e33961'
  name 'moneyGuru'
  homepage 'https://www.hardcoded.net/moneyguru/'

  app 'moneyGuru.app'
end
