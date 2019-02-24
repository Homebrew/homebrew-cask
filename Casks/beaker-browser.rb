cask 'beaker-browser' do
  version '0.8.5'
  sha256 '0c08bab0834d394ce6894373f481e245c25049e7572112953258a734397d68d8'

  # github.com/beakerbrowser/beaker was verified as official when first introduced to the cask
  url "https://github.com/beakerbrowser/beaker/releases/download/#{version}/beaker-browser-#{version}.dmg"
  appcast 'https://github.com/beakerbrowser/beaker/releases.atom'
  name 'Beaker Browser'
  homepage 'https://beakerbrowser.com/'

  app 'Beaker Browser.app'
end
