cask "speechify" do
  desc "AI-powered reading and voice assistant"
  version "3.3.0"
  sha256 :no_check

  url "https://storage.googleapis.com/speechifymobile.appspot.com/macAgentSparkle/SpeechifyVoiceAssistant.dmg",
      verified: "storage.googleapis.com/speechifymobile.appspot.com"
  # Appcast for reference: https://storage.googleapis.com/speechifymobile.appspot.com/macAgentSparkle/appcast.xml
  name "Speechify AI Assistant"
  homepage "https://www.speechify.com/"

  depends_on macos: :sonoma

  app "Speechify AI Assistant.app"

  zap delete: [
               "~/Library/Caches/com.cliffweitzman.speechifydesktop1",
               "~/Library/Caches/com.crashlytics.data/com.cliffweitzman.speechifydesktop1",
               "~/Library/Caches/io.fabric.sdk.mac.data/com.cliffweitzman.speechifydesktop1",
               "~/Library/Cookies/com.cliffweitzman.speechifydesktop1.binarycookies",
             ],
      trash:  [
               "~/Library/Application Support/com.cliffweitzman.speechifydesktop1",
               "~/Library/Preferences/com.cliffweitzman.speechifydesktop1.plist",
             ]
end
