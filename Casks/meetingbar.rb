cask "meetingbar" do
  version "3.1.1"
  sha256 "7435e51a7afde79bac08c6d791d2b62cda3631720fd64b45619ce791f842683a"

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
