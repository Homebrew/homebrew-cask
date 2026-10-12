cask "speechify-voice-ai" do
  version "3.20.0,624"
  sha256 "605bdd4f56d074e9d96735af04c76c2bdac6216a2bd8e9efdd939fc52e990e0c"

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
