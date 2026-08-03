cask "meetingrecorder" do
  version "1.6.2"
  sha256 "d1b09afa21f2c4ab90411ab777b7cffc27452fc2d494a8478636be9e2679637d"

  url "https://meetingsrecorder.com/downloads/MeetingRecorder-#{version}.dmg"
  name "MeetingRecorder"
  desc "Recorder for meetings capturing mic and system audio"
  homepage "https://meetingsrecorder.com/"

  livecheck do
    url "https://raw.githubusercontent.com/emishin/meetingrecorder-updates/main/appcast.xml"
    strategy :sparkle
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
