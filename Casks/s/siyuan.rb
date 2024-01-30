cask "siyuan" do
  arch arm: "-arm64"

  version "2.12.6"
  sha256 arm:   "3f334b261db3bc6a9ffc90e2a37f7b842197e0a2b489fc159d01c9e3f13fc1c3",
         intel: "eeb0b20391f6eec76fed277721f7da001fdc098bb903c702ba2ca817a181e35f"

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
