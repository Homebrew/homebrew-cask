cask 'flock' do
  version '2.2.334'
  sha256 '7d861aae5e2da7dd6b84e06d28db55e004604e5b9f7c78afbdc8cd0dc38d8147'

  # flock.co was verified as official when first introduced to the cask
  url "https://updates.flock.co/fl_mac_electron/Flock-macOS-#{version}.dmg"
  appcast 'https://bingo.flock.co/mac_electron.php'
  name 'Flock'
  homepage 'https://flock.com/'

  app 'Flock.app'
end
