cask 'corona-tracker' do
  version '1.5'
  sha256 'f00c866255de0a215e3218596d4b75223223fa909a8481988c7eac0fa0e67548'

  # github.com/MhdHejazi/CoronaTracker was verified as official when first introduced to the cask
  url "https://github.com/MhdHejazi/CoronaTracker/releases/download/v#{version}/CoronaTracker-macOS.zip"
  appcast 'https://github.com/MhdHejazi/CoronaTracker/releases.atom'
  name 'Corona Tracker'
  homepage 'https://coronatracker.samabox.com/'

  auto_updates true
  depends_on macos: '>= :catalina'

  app 'Corona Tracker.app'
end
