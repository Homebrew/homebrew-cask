cask "pear-ai" do
  version :latest
  sha256 "05ab2aab63d04f2159327d39f59169080374a77f78c3eb4a57eba3ee6c515755"

  url "https://pearai-app.nyc3.digitaloceanspaces.com/PearAI-latest/darwin-arm64/PearAI-Installer.dmg"
  name "PearAI"
  desc "Open source AI Code Editor"
  homepage "https://trypear.ai"

  depends_on macos: ">= :catalina"

  app "PearAI.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
   zap trash: [
    "~/Library/Application Support/Crash Reporter/Electron_61109777-DE87-5166-AC98-88DCB257BB59.plist",
    "~/Library/Application Support/PearAI",
    "~/Library/Caches/com.visualstudio.code.oss",
    "~/Library/Caches/com.visualstudio.code.oss.ShipIt",
    "~/Library/Saved Application State/com.visualstudio.code.oss.savedState",
  ]
end
