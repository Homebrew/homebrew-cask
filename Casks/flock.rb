cask 'flock' do
  version '2.2.295'
  sha256 '0f304ba661f5fcecccd4d391c10f9d7fee24c5082bb25697434a5b33b5fe631b'

  # flock.co was verified as official when first introduced to the cask
  url "https://updates.flock.co/fl_mac_electron/Flock-macOS-#{version}.dmg"
  appcast 'https://bingo.flock.co/mac_electron.php'
  name 'Flock'
  homepage 'https://flock.com/'

  app 'Flock.app'
end
