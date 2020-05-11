cask 'flock' do
  version '2.2.386'
  sha256 '71f9639af3ea5f384b95bb3e392dc94f017881323020d22ba51e3af0fe7b4c09'

  # flock.co/ was verified as official when first introduced to the cask
  url "https://updates.flock.co/fl_mac_electron/Flock-macOS-#{version}.dmg"
  appcast 'https://bingo.flock.co/mac_electron.php'
  name 'Flock'
  homepage 'https://flock.com/'

  app 'Flock.app'
end
