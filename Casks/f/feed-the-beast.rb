cask "feed-the-beast" do
  arch arm: "arm64", intel: "x64"

  version "1.25.12"
  sha256 arm:   "9e313c3630dfcb55b1dd6a4188d44498965fd3b6fc36f04e97d357cc211a5794",
         intel: "03c71f179eb470506483784099dd9c6047b5e151cde0c41f7f36b4f6c68cff70"

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
