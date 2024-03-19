cask "siyuan" do
  arch arm: "-arm64"

  version "3.0.4"
  sha256 arm:   "7cb82d42f16e495799626fe679d4f8c839c9b30f1345dc295a503065dac02ff2",
         intel: "7d90f1a39f14ab008f2c7ad7f78116fcb8a8e58c7a792b323f57fa5857d36b19"

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
