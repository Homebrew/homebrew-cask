cask "meetingbar" do
  version "2.0"
  sha256 "d9f4f2becb36c1f58923c2f2ba5cb5609346f9724b35fcf0e60b5864dcace73e"

  url "https://github.com/leits/MeetingBar/releases/download/v#{version}/MeetingBar.dmg"
  appcast "https://github.com/leits/MeetingBar/releases.atom"
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
