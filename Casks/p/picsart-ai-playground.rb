cask "picsart-ai-playground" do
  version "2.69.0"
  sha256 "bb969c47724ed5e49385a86882d03e6a6470d58dfe0e8447579d89449cd8a51d"

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
