cask "siyuan" do
  arch arm: "-arm64"

  version "2.9.8"
  sha256 arm:   "7a6e4bebd98e856c172103a0dd4a41a908181f8564edfe54c726f8ea5934e2df",
         intel: "3cc602b6c8681763772745b7ebf7943df9a74bdf6b8dd6b72fefdf3b5acda819"

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
