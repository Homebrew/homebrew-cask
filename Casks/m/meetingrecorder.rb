cask "meetingrecorder" do
  version "1.6.7"
  sha256 "e4f201c66f03fdbf33627d129f389e3e0968fde7826cdd32dacebcf3b082161c"

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
