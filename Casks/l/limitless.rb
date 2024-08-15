cask "limitless" do
  version "0.8290.1"
  sha256 :no_check

  url "https://download.limitless.ai/Limitless.dmg"
  name "Limitless"
  desc "Personal AI-powered transcription and notetaking service"
  homepage "https://www.limitless.ai/"

  livecheck do
    url "https://storage.googleapis.com/limitless-data/builds/main/manifest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Limitless.app"

  zap trash: [
    "~/Library/Caches/ai.limitless.desktop",
    "~/Library/HTTPStorages/ai.limitless.desktop.binarycookies",
    "~/Library/Logs/ai.limitless.desktop",
    "~/Library/Logs/Limitless",
    "~/Library/Saved Application State/ai.limitless.desktop.savedState",
    "~/Library/WebKit/ai.limitless.desktop",
  ]
end
