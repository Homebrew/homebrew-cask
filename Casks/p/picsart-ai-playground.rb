cask "picsart-ai-playground" do
  version "2.66.0"
  sha256 "d117fea48dd3147dbbcede75d6eff83051062a09c9378f11be9b00da8253eb62"

  url "https://picsart.com/ai-playground/desktop/update/AI-Playground-#{version}.zip"
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
