cask "feed-the-beast" do
  arch arm: "arm64", intel: "x64"

  version "1.26.1"
  sha256 arm:   "d877c4c3b7044b7047e3db4a542fbfaffbd91f0bc253b605dffb01297f4e37a0",
         intel: "64276241b0f5d493b2ee1fe0b4d50c445f4e3bc6a67b184b89b04a23374fb793"

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
