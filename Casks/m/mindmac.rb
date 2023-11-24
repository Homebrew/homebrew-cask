cask "mindmac" do
  version "1.8.0"
  sha256 "ef9b8078d59f0f8786682301b284f678699be7299784ccb56405a44a5f25d688"

  url "https://github.com/MindMacApp/MindMac/releases/download/#{version}/MindMac_#{version}.dmg",
      verified: "github.com/MindMacApp/MindMac/"
  name "MindMac"
  desc "ChatGPT client"
  homepage "https://mindmac.app/index.html"

  livecheck do
    url "https://github.com/MindMacApp/MindMac"
    strategy :github_latest
  end

  app "MindMac.app"

  zap trash: [
    "~/Library/Application Support/app.mindmac.macos",
    "~/Library/Application Support/MindMac",
    "~/Library/Caches/app.mindmac.macos",
    "~/Library/Preferences/app.mindmac.macos.plist",
    "~/Library/Saved Application State/app.mindmac.macos.savedState",
  ]
end
