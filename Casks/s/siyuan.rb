cask "siyuan" do
  arch arm: "-arm64"

  version "2.11.2"
  sha256 arm:   "c84acc38df08e79b4a460f98076b7fe174ecf350dd3c4a9fb1c05ca41956f3bb",
         intel: "31a45e982b698bd9fe80b0513ebd8a49821b3b66ce527dc4e927a60aa802c194"

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
