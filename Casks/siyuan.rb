cask "siyuan" do
  arch arm: "-arm64"

  version "2.5.4"
  sha256 arm:   "31f3fe817cf4fc726969e94a10fa008c9521a0ebf1f18b52d372e6ae1dacab90",
         intel: "a87998197aefbc53f836e7fe97fee262bc55dd7bd273adab2c1f94a46aa0b7e0"

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
