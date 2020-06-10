cask 'flock' do
  version '2.2.389'
  sha256 '84d0b0a94758d274feb8960339abb21195013cf75e00c46603dcd34c36b79898'

  # flock.co/ was verified as official when first introduced to the cask
  url "https://updates.flock.co/fl_mac_electron/Flock-macOS-#{version}.dmg"
  appcast 'https://bingo.flock.co/mac_electron.php'
  name 'Flock'
  homepage 'https://flock.com/'

  app 'Flock.app'
end
