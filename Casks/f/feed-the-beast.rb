cask "feed-the-beast" do
  arch arm: "arm64", intel: "x64"

  version "1.25.17"
  sha256 arm:   "dfd67e3676782f608da780b41fd716df4fc7745c6eeaccb7cbdff10a8472b85f",
         intel: "657cd776e0fd0d5a2e3e913ce6028dcbbf44f16b45c5eba0e8fd1667fbf00b84"

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
