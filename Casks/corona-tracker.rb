cask 'corona-tracker' do
  version '1.6'
  sha256 '25de160574deb71081f37c6573f867d29db2cbfee94b2431f4a684a6ada0a49a'

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
