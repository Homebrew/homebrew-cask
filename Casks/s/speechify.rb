cask "speechify" do
  version "3.3.0"
  sha256 :no_check

  url "https://storage.googleapis.com/speechifymobile.appspot.com/macAgentSparkle/SpeechifyVoiceAssistant.dmg",
      verified: "storage.googleapis.com/speechifymobile.appspot.com/"
  name "Speechify AI Assistant"
  desc "AI-powered reading and voice assistant"
  homepage "https://www.speechify.com/"

  depends_on macos: :sonoma

  app "Speechify AI Assistant.app"

  zap delete: [
        "~/Library/Caches/com.cliffweitzman.speechifymacagent",
        "~/Library/Caches/com.crashlytics.data/com.cliffweitzman.speechifymacagent",
      ],
      trash:  [
        "~/Library/Application Support/com.cliffweitzman.speechifymacagent",
        "~/Library/Preferences/com.cliffweitzman.speechifymacagent.plist",
      ]
end
