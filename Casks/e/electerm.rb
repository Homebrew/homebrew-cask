cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.39.109"
  sha256 arm:   "58ac60e732e91b6690c2fcd1895488e9f6ed512420d3a8e72b8a10219c6c76ac",
         intel: "80f51b1c25377af83898eca0657ecf1e546da8aad59ae2508f412ff9d38e571a"

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
