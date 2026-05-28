cask "speechify" do
  version "3.3.0"
  sha256 :no_check

  url "https://storage.googleapis.com/speechifymobile.appspot.com/macAgentSparkle/SpeechifyVoiceAssistant.dmg",
      verified: "speechify.com"
  name "Speechify AI Assistant"
  homepage "https://www.speechify.com/"

  depends_on macos: "sonoma"

  app "Speechify AI Assistant.app"
end
