cask "siyuan" do
  arch arm: "-arm64"

  version "2.9.1"
  sha256 arm:   "554bfdb359665471e00da38251f6f458af18e8e0102c31910dd6f3e2e9a924b8",
         intel: "7fd1a2844e6efa7a149516f1d89c7978861eed2e1c167c5df29644c5e225d23d"

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
