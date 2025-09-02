cask "siyuan" do
  arch arm: "-arm64"

  version "3.3.1"
  sha256 arm:   "12f27ee883bd29241d5513a94ee60bd2756913ae381e5742a212af7d8fd49458",
         intel: "2a7271598215f1b774c76a39b05d5e1a84e8a4928a5c486c76598a3aa14929f5"

  url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "SiYuan"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-note/siyuan"

  depends_on macos: ">= :catalina"

  app "SiYuan.app"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
