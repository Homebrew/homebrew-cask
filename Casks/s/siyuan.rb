cask "siyuan" do
  arch arm: "-arm64"

  version "3.1.6"
  sha256 arm:   "88031c268eef2f61dade1d87f1cd27876cc92cd6ac85c068900a5a1a58e3ad8b",
         intel: "813d2541d23c95500485aa2a56116ec735df8def0c4439e8041ff9ec5e7245c0"

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
