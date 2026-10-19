cask "speechify-voice-ai" do
  version "3.21.0,629"
  sha256 "c049aa5c968009464bcaec8d3e12a88d3a9aecf99f8dd995b00520a2bc191e94"

  url "https://lfs-cdn.speechify.com/mac/dmgs/#{version.tr(",", "-")}/SpeechifyVoiceAssistant-#{version.tr(",", "-")}.dmg"
  name "Speechify AI Assistant"
  desc "AI-powered reading and voice assistant"
  homepage "https://www.speechify.com/"

  livecheck do
    url "https://lfs-cdn.speechify.com/mac/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Speechify Voice AI.app"

  zap trash: [
    "~/Library/Application Support/com.cliffweitzman.speechifymacagent",
    "~/Library/Caches/com.cliffweitzman.speechifymacagent",
    "~/Library/Caches/com.crashlytics.data/com.cliffweitzman.speechifymacagent",
    "~/Library/HTTPStorages/com.cliffweitzman.speechifymacagent",
    "~/Library/Preferences/com.cliffweitzman.speechifymacagent.plist",
  ]
end
