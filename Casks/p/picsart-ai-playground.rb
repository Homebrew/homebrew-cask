cask "picsart-ai-playground" do
  version "2.68.0"
  sha256 "d80529f0aafbb8d41391817d159142c8ca68014b5969ac2fdffb557b0353d470"

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
