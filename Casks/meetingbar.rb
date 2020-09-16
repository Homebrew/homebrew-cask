cask "meetingbar" do
  version "1.5"
  sha256 "c0f9f27ae60711d25a809c8c513cefec9806f903c6a7d7b070d759b3a00f805a"

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
