cask "siyuan" do
  arch arm: "-arm64"

  version "3.1.0"
  sha256 arm:   "9ac2ac75e5dbef7196707a29b24edcad908a63c53ecb893a0b3012233e218365",
         intel: "84b2194920ea1d0c272aa6b8ca01932f7508975c36c53bc53f5502829c40f73f"

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
