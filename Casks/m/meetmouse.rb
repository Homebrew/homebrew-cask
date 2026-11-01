cask "meetmouse" do
  version "0.33.1"
  sha256 "373f71b13d2caac08c7ffc78948db1d028a1174b39587e0953723a284dfff423"

  url "https://github.com/noahdevkagan/meetmouse/releases/download/v#{version}/MeetMouse-#{version}.dmg"
  name "MeetMouse"
  desc "On-device meeting transcription and live AI coaching tool"
  homepage "https://meetmouse.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "MeetMouse.app"

  uninstall quit: "com.coach.MeetingCoach"

  zap trash: [
    "~/Library/Application Support/MeetingCoach",
    "~/Library/Caches/com.coach.MeetingCoach",
    "~/Library/HTTPStorages/com.coach.MeetingCoach",
    "~/Library/Preferences/com.coach.MeetingCoach.plist",
    "~/Library/Saved Application State/com.coach.MeetingCoach.savedState",
  ]
end
