cask 'flock' do
  version '2.2.379'
  sha256 'feb9b085f64ce0700e364ccd9455b997aca5e21b0632db646576b6957076e354'

  # flock.co/ was verified as official when first introduced to the cask
  url "https://updates.flock.co/fl_mac_electron/Flock-macOS-#{version}.dmg"
  appcast 'https://bingo.flock.co/mac_electron.php'
  name 'Flock'
  homepage 'https://flock.com/'

  app 'Flock.app'
end
