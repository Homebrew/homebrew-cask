cask "siyuan" do
  arch arm: "-arm64"

  version "2.9.6"
  sha256 arm:   "4335f59b7d9f04989f5f30a707651737ac8f15a3886ddf1213ff768ab61a4b7d",
         intel: "69f07745c97e69a71d206b596ade0f0217160928b088280b3f42d912d05677db"

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
