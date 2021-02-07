cask "meetingbar" do
  version "3.0"
  sha256 "81988948b66b3c8e5755efeecd80f1f979719a637b5d970457c7fce2292b6131"

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
