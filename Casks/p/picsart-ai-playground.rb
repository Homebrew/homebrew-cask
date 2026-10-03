cask "picsart-ai-playground" do
  version "2.65.0"
  sha256 :no_check

  url "https://picsart.com/ai-playground/desktop/AI-Playground.dmg"
  name "Picsart AI Playground"
  desc "Workspace for AI image, video and audio creation"
  homepage "https://picsart.com/ai-playground/desktop/"

  livecheck do
    url "https://picsart.com/ai-playground/desktop/update/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "AI Playground.app"

  uninstall quit: "com.picsart.apps.aiplayground"

  zap trash: [
    "~/Library/Application Support/AI Playground",
    "~/Library/Preferences/com.picsart.apps.aiplayground.plist",
  ]
end
