cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.23.32"
  sha256 arm:   "482461e40ead2d09f20b0430dedb353050ece2d7b535265c62d0e3d1b00350dc",
         intel: "6bfb6307529b1606110f7a631114097f5ecc1452aac20facfbc7e416b255e51d"

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
