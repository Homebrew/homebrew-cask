cask 'corona-tracker' do
  version '1.2.1'
  sha256 '201d5b6103e6c6a7ba28779998c9e3b20077b731e36633be62e340247ada28ea'

  # github.com/MhdHejazi/CoronaTracker was verified as official when first introduced to the cask
  url "https://github.com/MhdHejazi/CoronaTracker/releases/download/v#{version}/CoronaTracker-macOS.zip"
  appcast 'https://github.com/MhdHejazi/CoronaTracker/releases.atom'
  name 'Corona Tracker'
  homepage 'https://coronatracker.samabox.com/'

  auto_updates true

  app 'Corona Tracker.app'
end
