cask "meetingrecorder" do
  version "1.6.5"
  sha256 "21fcc502460f39c68fa8d4fb1da25c5f1fdbe6f4d1f553daad18171a20ed32e5"

  url "https://meetingsrecorder.com/downloads/MeetingRecorder-#{version}.dmg"
  name "MeetingRecorder"
  desc "Recorder for meetings capturing mic and system audio"
  homepage "https://meetingsrecorder.com/"

  livecheck do
    url "https://raw.githubusercontent.com/emishin/meetingrecorder-updates/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "MeetingRecorder.app"

  zap trash: [
    "~/Library/Application Support/MeetingRecorder",
    "~/Library/Caches/com.meetingrecorder.app",
    "~/Library/HTTPStorages/com.meetingrecorder.app",
    "~/Library/Preferences/com.meetingrecorder.app.plist",
  ]
end
