cask "mindmac" do
  version "1.8.8"
  sha256 "894c67cbed5ccfce8e06ce9d5998d5ed044a7abeca21951a8a004cf661dcf15e"

  url "https://github.com/MindMacApp/MindMac/releases/download/#{version}/MindMac_#{version}.dmg",
      verified: "github.com/MindMacApp/MindMac/"
  name "MindMac"
  desc "ChatGPT client"
  homepage "https://mindmac.app/"

  depends_on macos: ">= :ventura"

  app "MindMac.app"

  zap trash: [
    "~/Library/Application Support/app.mindmac.macos",
    "~/Library/Application Support/MindMac",
    "~/Library/Caches/app.mindmac.macos",
    "~/Library/Preferences/app.mindmac.macos.plist",
    "~/Library/Saved Application State/app.mindmac.macos.savedState",
  ]
end
