cask "siyuan" do
  arch arm: "-arm64"

  version "2.7.6"
  sha256 arm:   "ace9a3e179391669118be7885d044c6b8abb26ea7b2199f00566fc2f1277fa25",
         intel: "dc086c1a30ee457a4a2371c34804a14a010627c4636f9a32e5e8cc2610ad1757"

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
