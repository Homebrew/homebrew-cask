cask "picsart-ai-playground" do
  version "2.75.0"
  sha256 "9f61b90e353eeb7082772e7d6765ce8a81ad6f48925a5957b66f2d74bbc138b4"

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
