cask "siyuan" do
  arch arm: "-arm64"

  version "2.8.9"
  sha256 arm:   "9570e23d9b5fc778460b86f8c71711795d96120b8ecbfb39026248ac01c944e5",
         intel: "7d8204afb6cf8dcb4e7d0d1c3139efef512f4c4d1da8d723daf4f770b1bf9ccd"

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
