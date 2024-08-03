cask "mindmac" do
  version "1.9.21"
  sha256 "a74cab3f9c443e20b53ea3487f773f1c8f378509fc628dd1a4bf275092b20142"

  url "https://github.com/MindMacApp/MindMac/releases/download/#{version}/MindMac_#{version}.dmg",
      verified: "github.com/MindMacApp/MindMac/"
  name "MindMac"
  desc "ChatGPT client"
  homepage "https://mindmac.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "MindMac.app"

  zap trash: [
    "~/Library/Application Support/app.mindmac.macos",
    "~/Library/Application Support/MindMac",
    "~/Library/Caches/app.mindmac.macos",
    "~/Library/Caches/com.crashlytics.data/app.mindmac.macos",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/app.mindmac.macos",
    "~/Library/Containers/org.sparkle-project.Downloader/Data/Library/Caches/app.mindmac.macos",
    "~/Library/HTTPStorages/app.mindmac.macos",
    "~/Library/HTTPStorages/app.mindmac.macos.binarycookies",
    "~/Library/Preferences/app.mindmac.macos.plist",
    "~/Library/Saved Application State/app.mindmac.macos.savedState",
    "~/Library/WebKit/app.mindmac.macos",
  ]
end
