cask "feed-the-beast" do
  arch arm: "arm64", intel: "x64"

  version "1.25.15"
  sha256 arm:   "8ca35e82332c2b67d3b5383ca291b5cd054774bfbb6b7de867860135276dadd5",
         intel: "82ff00cb8bc1b70d47597e5da999a23b0699b2e38ebb9426e0f8bf53eb90e463"

  url "https://piston.feed-the-beast.com/app/ftb-app-#{version}-#{arch}.dmg"
  name "Feed the Beast"
  desc "Minecraft mod downloader and manager"
  homepage "https://www.feed-the-beast.com/"

  livecheck do
    url "https://meta.feed-the-beast.com/v1/app/versions"
    regex(/ftb[._-]app[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  auto_updates true

  app "FTB Electron App.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.ftb.app.sfl*",
    "~/Library/Application Support/FTB Electron App",
    "~/Library/Logs/FTB Electron App",
    "~/Library/Preferences/dev.ftb.app.plist",
    "~/Library/Saved Application State/dev.ftb.app.savedState",
  ]
end
