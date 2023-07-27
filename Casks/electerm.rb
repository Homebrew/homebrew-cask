cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.27.20"
  sha256 arm:   "eb102e33ab7a008cfe95c9a6c3bce39c24cfafacc5ae2ef89c29efd818e0094c",
         intel: "d15c9f247cf2c6b3eb7ec821dab31fddf884e566ff46e3e1ee749dafc0fa32d3"

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
