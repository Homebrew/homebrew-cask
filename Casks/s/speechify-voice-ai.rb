cask "speechify-voice-ai" do
  version "3.26.0,645"
  sha256 "a7a443d4cc93b10ccc2da5eb39e2f3f1a49645d913e9514e95d9b17da69939bb"

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
