cask 'flock' do
  version '2.2.314'
  sha256 'a9b72fd763cfede7d67336b238164eef56053a3e1100415d0668d7ed0c3b89b3'

  # flock.co was verified as official when first introduced to the cask
  url "https://updates.flock.co/fl_mac_electron/Flock-macOS-#{version}.dmg"
  appcast 'https://bingo.flock.co/mac_electron.php'
  name 'Flock'
  homepage 'https://flock.com/'

  app 'Flock.app'
end
