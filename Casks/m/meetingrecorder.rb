cask "meetingrecorder" do
  version "1.6.9"
  sha256 "6f6529107c519089a5fbd116d636ea91aaef384b52060f4e3ef8ef3d7d9fe0dd"

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
