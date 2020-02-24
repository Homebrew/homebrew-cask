cask 'flock' do
  version '2.2.357'
  sha256 'accb15adf101e91fecb255eb5c940d5c4202386335dd9f219864b400dc57d261'

  # flock.co was verified as official when first introduced to the cask
  url "https://updates.flock.co/fl_mac_electron/Flock-macOS-#{version}.dmg"
  appcast 'https://bingo.flock.co/mac_electron.php'
  name 'Flock'
  homepage 'https://flock.com/'

  app 'Flock.app'
end
