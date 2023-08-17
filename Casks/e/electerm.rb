cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.28.3"
  sha256 arm:   "a2db7e630d5201eeb90e047369f142be409dda9bb79a0d3211b5c1581dabc973",
         intel: "163c831331a91cfd69725f6f78936df415be477e12149f1fa7db6fbaba63e8e0"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-#{arch}.dmg"
  name "electerm"
  desc "Terminal/ssh/sftp client"
  homepage "https://github.com/electerm/electerm/"

  auto_updates true

  app "electerm.app"
  binary "#{appdir}/electerm.app/Contents/MacOS/electerm"

  zap trash: [
    "~/Library/Application Support/electerm",
    "~/Library/Logs/electerm",
    "~/Library/Preferences/org.electerm.electerm.plist",
    "~/Library/Saved Application State/org.electerm.electerm.savedState",
  ]
end
