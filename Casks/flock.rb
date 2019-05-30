cask 'flock' do
  version '2.2.257'
  sha256 '2e52bd5c5a2d136e9ceaed6e3faddda9aa870c1d73d3395570b720e56edbb94e'

  # flock.co was verified as official when first introduced to the cask
  url "https://updates.flock.co/fl_mac_electron/Flock-macOS-#{version}.dmg"
  appcast 'https://bingo.flock.co/mac_electron.php'
  name 'Flock'
  homepage 'https://flock.com/'

  app 'Flock.app'
end
