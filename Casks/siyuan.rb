cask "siyuan" do
  arch arm: "-arm64"

  version "2.8.5"
  sha256 arm:   "35c4bf815f0d1f0610d2da3a41fe90e26525e8cdeeb3109e1f0af612c5b1cdc5",
         intel: "8076d3b5d33b5d5335d502a0ed2fee7ccdc1f0a48749cf7cda8d7fa72b3c2873"

  url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "SiYuan"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-note/siyuan"

  app "SiYuan.app"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
