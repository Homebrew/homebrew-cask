cask "siyuan" do
  arch arm: "-arm64"

  version "2.8.1"
  sha256 arm:   "ad36b2d9f4f755a4d7b4dbbe1d0feafd4a2942cea06b42388378d6b97305ee0d",
         intel: "3c485f329c39c32eab842197176a4c9b2ac58df21e25b877cc7e417bfd83ab2b"

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
