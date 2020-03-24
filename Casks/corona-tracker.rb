cask 'corona-tracker' do
  version '1.4'
  sha256 'cd72b9d62072cc2ee5b2d0dbd8c44c9dd39ee9b2937845116cc492fc796ed821'

  # github.com/MhdHejazi/CoronaTracker was verified as official when first introduced to the cask
  url "https://github.com/MhdHejazi/CoronaTracker/releases/download/v#{version}/CoronaTracker-macOS.zip"
  appcast 'https://github.com/MhdHejazi/CoronaTracker/releases.atom'
  name 'Corona Tracker'
  homepage 'https://coronatracker.samabox.com/'

  auto_updates true
  depends_on macos: '>= :catalina'

  app 'Corona Tracker.app'
end
