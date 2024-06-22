cask "feed-the-beast" do
  arch arm: "arm64", intel: "x64"

  version "1.25.14"
  sha256 arm:   "bad672646f019236dfd8dbb0d4a061663958878c02068edd2b81a3f5a84e8a73",
         intel: "e141e0ba01e7876ab5c5013632ff9f1dbcb5ac8089c8e8bdff32cb24cb0cb619"

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
