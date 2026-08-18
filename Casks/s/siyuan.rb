cask "siyuan" do
  arch arm: "-arm64"

  version "3.8.1"
  sha256 arm:   "04f52f4deba796a44decf2cc6de2ad77ef4106407d186dcc4d6b961dd061aa9d",
         intel: "b4605ba5c4a389ce20f14ae3200768a4a0a9dbd46ba21c4f155ffe5b87bc5e1f"

  url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "SiYuan"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-note/siyuan"

  auto_updates true
  depends_on macos: :monterey

  app "SiYuan.app"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
