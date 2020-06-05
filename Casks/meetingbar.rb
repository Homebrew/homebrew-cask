cask 'meetingbar' do
  version '1.0b14'
  sha256 'fbc449bbb0996efb34eb4eae28e356e8ac2e6313b2c7190d6f7a9dcbfe0dad39'

  appcast 'https://github.com/leits/MeetingBar/releases.atom'

  url "https://github.com/leits/MeetingBar/releases/download/v#{version}/MeetingBar.dmg"
  name 'MeetingBar'
  homepage 'https://github.com/leits/MeetingBar'

  app 'MeetingBar.app'
end
