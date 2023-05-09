cask "siyuan" do
  arch arm: "-arm64"

  version "2.8.7"
  sha256 arm:   "4f87165a4958fc4a9665e1c1837a88fff49fc09f507ab95a91a90423e3fb795b",
         intel: "fa47adcacf59965e43275e7c8aa4e3a2c2920f5ffcfa3702ef4780efd3460e8e"

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
