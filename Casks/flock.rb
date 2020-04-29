cask 'flock' do
  version '2.2.381'
  sha256 '0f314d4509ea2523a6750e0851b9d29e71ea12fe0aa686386c2df8039c30671a'

  # flock.co/ was verified as official when first introduced to the cask
  url "https://updates.flock.co/fl_mac_electron/Flock-macOS-#{version}.dmg"
  appcast 'https://bingo.flock.co/mac_electron.php'
  name 'Flock'
  homepage 'https://flock.com/'

  app 'Flock.app'
end
