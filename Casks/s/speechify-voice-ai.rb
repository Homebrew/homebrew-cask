cask "speechify-voice-ai" do
  version "3.24.0,638"
  sha256 "fe98dbca13e621b7bd94665b72c68054b1959d1862688f32a297f54baceea093"

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
