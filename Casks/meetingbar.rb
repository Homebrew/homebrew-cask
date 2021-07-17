cask "meetingbar" do
  version "3.6.0"
  sha256 "15f20177aa3d7fe3a0d1ed7b435f913e7202905f1166368acd88ee8f44fdf2e4"

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
