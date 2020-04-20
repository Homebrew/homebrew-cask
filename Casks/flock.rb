cask 'flock' do
  version '2.2.374'
  sha256 '4318e5ba5f0156f6eea503a93b04bcc2393339a6d910ea7443e4cb82d0431e96'

  # flock.co/ was verified as official when first introduced to the cask
  url "https://updates.flock.co/fl_mac_electron/Flock-macOS-#{version}.dmg"
  appcast 'https://bingo.flock.co/mac_electron.php'
  name 'Flock'
  homepage 'https://flock.com/'

  app 'Flock.app'
end
