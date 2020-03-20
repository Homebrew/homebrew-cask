cask 'flock' do
  version '2.2.361'
  sha256 '63e7e578904729c61880f3422190d585f3ff5640b347975787bd3467f6c01167'

  # flock.co was verified as official when first introduced to the cask
  url "https://updates.flock.co/fl_mac_electron/Flock-macOS-#{version}.dmg"
  appcast 'https://bingo.flock.co/mac_electron.php'
  name 'Flock'
  homepage 'https://flock.com/'

  app 'Flock.app'
end
