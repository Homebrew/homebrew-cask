cask "meetingbar" do
  version "2.0.4"
  sha256 "243cedbbd6e284a51e500b6c0b57bae4527c173455a6386bcf113db8b66b02c5"

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
