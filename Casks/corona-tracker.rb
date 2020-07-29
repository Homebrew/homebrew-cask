cask 'corona-tracker' do
  version '1.7.1'
  sha256 'd9147af90ba4348b961d2a6722e57bfdbfeee9d7b02e63c63dbdbe9e4bd2bc9f'

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
