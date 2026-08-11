cask "meetingrecorder" do
  version "1.6.3"
  sha256 "4b0dc1f472866dea0362bdda7583bb5f68964140fa36fe170cc8118b552a3f26"

  url "https://meetingsrecorder.com/downloads/MeetingRecorder-#{version}.dmg"
  name "MeetingRecorder"
  desc "Recorder for meetings capturing mic and system audio"
  homepage "https://meetingsrecorder.com/"

  livecheck do
    url "https://raw.githubusercontent.com/emishin/meetingrecorder-updates/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "MeetingRecorder.app"

  zap trash: [
    "~/Library/Application Support/MeetingRecorder",
    "~/Library/Caches/com.meetingrecorder.app",
    "~/Library/HTTPStorages/com.meetingrecorder.app",
    "~/Library/Preferences/com.meetingrecorder.app.plist",
  ]
end
