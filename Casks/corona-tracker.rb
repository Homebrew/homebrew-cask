cask 'corona-tracker' do
  version '1.7'
  sha256 '9cb1a81483a8f41446ac80e00deb668904fb4860e36321132cc5774249ee48cf'

  # github.com/MhdHejazi/CoronaTracker/ was verified as official when first introduced to the cask
  url "https://github.com/MhdHejazi/CoronaTracker/releases/download/v#{version}/CoronaTracker-macOS.zip"
  appcast 'https://github.com/MhdHejazi/CoronaTracker/releases.atom'
  name 'Corona Tracker'
  homepage 'https://coronatracker.samabox.com/'

  depends_on macos: '>= :catalina'

  app 'Corona Tracker.app'

  zap trash: [
               '~/Library/Containers/maccatalyst.com.samabox.corona',
               '~/Library/Application Scripts/maccatalyst.com.samabox.corona',
             ]
end
