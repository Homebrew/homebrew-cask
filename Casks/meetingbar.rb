cask 'meetingbar' do
  version '1.2'
  sha256 'b5bc97ec8b3ed7a61a265a6964e8c2179ea4dd6dfa2569c3f56a0f81cbdf17c2'

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
