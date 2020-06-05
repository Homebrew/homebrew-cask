cask 'meetingbar' do
  version '1.0b14'
  sha256 'fbc449bbb0996efb34eb4eae28e356e8ac2e6313b2c7190d6f7a9dcbfe0dad39'

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
