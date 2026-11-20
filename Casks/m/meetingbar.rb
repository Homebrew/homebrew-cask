cask "meetingbar" do
  version "5.0.0"
  sha256 "26d4759f73f429c2aa93d225704bf85cdde8b1c035c12aadeb63d4dddbdae1e4"

  url "https://github.com/leits/MeetingBar/releases/download/v#{version}/MeetingBar.dmg"
  name "MeetingBar"
  desc "Meetings in your menu bar"
  homepage "https://github.com/leits/MeetingBar"

  no_autobump! because: :bumped_by_upstream

  depends_on macos: :monterey

  app "MeetingBar.app"

  zap trash: [
    "~/Library/Application Scripts/leits.MeetingBar",
    "~/Library/Containers/leits.MeetingBar",
  ]
end
