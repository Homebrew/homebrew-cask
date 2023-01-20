cask "siyuan" do
  arch arm: "-arm64"

  version "2.6.3"
  sha256 arm:   "cae9c68f22305f17757d93c78b265f0b02fd3ab5870d09fdee3003ec0508112b",
         intel: "3ea707afc9b83d5f1a62474b18e7b14013fd758403ed1fba083e00061527e82e"

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
