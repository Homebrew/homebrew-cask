cask "meetingbar" do
  version "3.5.0"
  sha256 "6597122594fe848143aacdf554951048716c9b902fe4dac8c72e7a9c45dc8fa7"

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
