cask "siyuan" do
  arch arm: "-arm64"

  version "2.10.6"
  sha256 arm:   "c30328d7c7c87d204821b744bcd0fcbca8256e284a85b698c1a5ac6f4be52e12",
         intel: "d7cc0b8d0059f1e81b1712f2ee98d2298d9c80db2615622bac8d50878d03fd48"

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
