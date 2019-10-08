cask 'flock' do
  version '2.2.308'
  sha256 '049153bb8cc614da0dfc72fb41b4f75ccd0bf60b67c47b3a4ec587ba0b670b4c'

  # flock.co was verified as official when first introduced to the cask
  url "https://updates.flock.co/fl_mac_electron/Flock-macOS-#{version}.dmg"
  appcast 'https://bingo.flock.co/mac_electron.php'
  name 'Flock'
  homepage 'https://flock.com/'

  app 'Flock.app'
end
