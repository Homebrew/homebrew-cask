cask 'corona-tracker' do
  version '1.3.1'
  sha256 '94b8c54cf01a359982fa0d972d50aa57f47d0080cfd8be6b7f8ca5001bbb1238'

  # github.com/MhdHejazi/CoronaTracker was verified as official when first introduced to the cask
  url "https://github.com/MhdHejazi/CoronaTracker/releases/download/v#{version}/CoronaTracker-macOS.zip"
  appcast 'https://github.com/MhdHejazi/CoronaTracker/releases.atom'
  name 'Corona Tracker'
  homepage 'https://coronatracker.samabox.com/'

  auto_updates true

  app 'Corona Tracker.app'
end
