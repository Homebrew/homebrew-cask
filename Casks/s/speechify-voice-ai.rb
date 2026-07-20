cask "speechify-voice-ai" do
  version "3.9.0"
  sha256 :no_check

  url "https://storage.googleapis.com/speechifymobile.appspot.com/macAgentSparkle/SpeechifyVoiceAssistant.dmg",
      verified: "storage.googleapis.com/speechifymobile.appspot.com/"
  name "Speechify AI Assistant"
  desc "AI-powered reading and voice assistant"
  homepage "https://www.speechify.com/"

  livecheck do
    url "https://storage.googleapis.com/speechifymobile.appspot.com/macAgentSparkle/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Speechify Voice AI.app"

  zap trash: [
    "~/Library/Application Support/com.cliffweitzman.speechifymacagent",
    "~/Library/Caches/com.cliffweitzman.speechifymacagent",
    "~/Library/Caches/com.crashlytics.data/com.cliffweitzman.speechifymacagent",
    "~/Library/Preferences/com.cliffweitzman.speechifymacagent.plist",
  ]
end
