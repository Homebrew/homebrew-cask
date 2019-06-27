cask 'flock' do
  version '2.2.268'
  sha256 'b2514e3915c83be8087f3b801f51496f424eb2462cbb5db95e6b519ddaa79ec4'

  # flock.co was verified as official when first introduced to the cask
  url "https://updates.flock.co/fl_mac_electron/Flock-macOS-#{version}.dmg"
  appcast 'https://bingo.flock.co/mac_electron.php'
  name 'Flock'
  homepage 'https://flock.com/'

  app 'Flock.app'
end
