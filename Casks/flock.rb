cask 'flock' do
  version '2.2.274'
  sha256 'cf56dbb424ba6b276fa631331b3439bc77b05b37fb235840f4a940ca2782ff78'

  # flock.co was verified as official when first introduced to the cask
  url "https://updates.flock.co/fl_mac_electron/Flock-macOS-#{version}.dmg"
  appcast 'https://bingo.flock.co/mac_electron.php'
  name 'Flock'
  homepage 'https://flock.com/'

  app 'Flock.app'
end
