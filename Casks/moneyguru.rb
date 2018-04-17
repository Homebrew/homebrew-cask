cask 'moneyguru' do
  version '2.10.2'
  sha256 '379e3a556e484531315facc7fbea286fd1b3b30dcdb2e5d95cea7d817e8fde1d'

  url "https://download.hardcoded.net/moneyguru_osx_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.hardcoded.net/updates/moneyguru.appcast',
          checkpoint: 'a53914192a8f70e7a8c20904ba7f5d12f5f763abc0776228d2c5a28ea5cba638'
  name 'moneyGuru'
  homepage 'https://www.hardcoded.net/moneyguru/'

  app 'moneyGuru.app'
end
