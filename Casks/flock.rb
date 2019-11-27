cask 'flock' do
  version '2.2.327'
  sha256 'bf8f42bf10bc0b2915bc2972fb24c88d6a412f03a5a0b5f735ff0518cf38730f'

  # flock.co was verified as official when first introduced to the cask
  url "https://updates.flock.co/fl_mac_electron/Flock-macOS-#{version}.dmg"
  appcast 'https://bingo.flock.co/mac_electron.php'
  name 'Flock'
  homepage 'https://flock.com/'

  app 'Flock.app'
end
