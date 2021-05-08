cask "meetingbar" do
  version "3.3.0"
  sha256 "f6df08f4a4395f2c61bbb5ab410a71ff715da9015dbc410c3875bb98dd7516e9"

  url "https://github.com/leits/MeetingBar/releases/download/v#{version}/MeetingBar.dmg"
  name "MeetingBar"
  desc "Shows the next meeting in the menu bar"
  homepage "https://github.com/leits/MeetingBar"

  depends_on macos: ">= :catalina"

  app "MeetingBar.app"

  zap trash: [
    "~/Library/Application Scripts/leits.MeetingBar",
    "~/Library/Containers/leits.MeetingBar",
  ]
end
