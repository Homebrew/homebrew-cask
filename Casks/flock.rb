cask 'flock' do
  version '2.2.360'
  sha256 '13e19aa0450279481214f013a181c0e451f3d49435e5e59034f5fcc07234c773'

  # flock.co was verified as official when first introduced to the cask
  url "https://updates.flock.co/fl_mac_electron/Flock-macOS-#{version}.dmg"
  appcast 'https://bingo.flock.co/mac_electron.php'
  name 'Flock'
  homepage 'https://flock.com/'

  app 'Flock.app'
end
