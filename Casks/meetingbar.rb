cask 'meetingbar' do
  version '1.1'
  sha256 'bf9697b26392da91a05c73884dabcfd5f38d482869060a7d4db20faf7a1d2126'

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
