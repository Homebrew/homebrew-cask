cask "siyuan" do
  arch arm: "-arm64"

  version "3.1.15"
  sha256 arm:   "2a9d6cfa1c9e4593ede19ddcf7b7a829a160d0d8cc99b60563c81f37118327ac",
         intel: "3d2326162b71e2501c06bdeac4239ba21e55611b4cdbb02f3860e5475eb27002"

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
