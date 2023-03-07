cask "siyuan" do
  arch arm: "-arm64"

  version "2.7.7"
  sha256 arm:   "f1f7e38281a501b81c6a201bde2d904b100c99a32a63a21643c9762c7fd178f4",
         intel: "6f8040e0d768ac4751a66f836a34683a92f57a00356d60854a1a2fea9f637aee"

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
