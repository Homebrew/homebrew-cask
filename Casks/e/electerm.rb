cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.39.35"
  sha256 arm:   "305d1dc8257b1f4f54575eb1cb76781238a4181eff2c8dbc4b4dac74b2d70f80",
         intel: "64b3de35e1ecc70debaa9ae3a7e312032d0830db28f1ce14ab7a6e4a10b0a651"

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
