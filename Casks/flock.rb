cask 'flock' do
  version '2.2.248'
  sha256 '1b0ff6b9b127af44a705bbaa9700debf1366ebe4dc45952b94b4395a1a29b636'

  # flock.co was verified as official when first introduced to the cask
  url "https://updates.flock.co/fl_mac_electron/Flock-macOS-#{version}.dmg"
  appcast 'https://bingo.flock.co/mac_electron.php'
  name 'Flock'
  homepage 'https://flock.com/'

  app 'Flock.app'
end
