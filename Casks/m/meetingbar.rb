cask "meetingbar" do
  version "4.11.5"
  sha256 "b7c3d3aca2c66993a6098b9327408b2559801b984285ad8d451ef384c8482f50"

  url "https://github.com/leits/MeetingBar/releases/download/v#{version}/MeetingBar.dmg"
  name "MeetingBar"
  desc "Shows the next meeting in the menu bar"
  homepage "https://github.com/leits/MeetingBar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  no_autobump! because: :bumped_by_upstream

  app "MeetingBar.app"

  zap trash: [
    "~/Library/Application Scripts/leits.MeetingBar",
    "~/Library/Containers/leits.MeetingBar",
  ]
end
