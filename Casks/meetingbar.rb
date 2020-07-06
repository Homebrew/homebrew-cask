cask 'meetingbar' do
  version '1.3'
  sha256 'ab1309ffa0f00ca590951d8ae827c2c54180ea48b6b327e209d9261427361097'

  url "https://github.com/leits/MeetingBar/releases/download/v#{version}/MeetingBar.dmg"
  appcast 'https://github.com/leits/MeetingBar/releases.atom'
  name 'MeetingBar'
  homepage 'https://github.com/leits/MeetingBar'

  depends_on macos: '>= :catalina'

  app 'MeetingBar.app'

  zap trash: [
               '~/Library/Application Scripts/leits.MeetingBar',
               '~/Library/Containers/leits.MeetingBar',
             ]
end
