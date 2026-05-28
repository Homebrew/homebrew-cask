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
end
