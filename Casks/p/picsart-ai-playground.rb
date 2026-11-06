cask "picsart-ai-playground" do
  version "2.74.0"
  sha256 "50144dacb9a0d73abd4380f34ca475c17d8b3f39452c186cd08f4e0d4fcd6906"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.picsart.apps.aiplayground.sfl*",
    "~/Library/Preferences/com.picsart.apps.aiplayground.plist",
  ]
end
