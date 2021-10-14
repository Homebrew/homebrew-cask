cask "siyuan" do
  version "1.4.1"
  sha256 "e20e4ddf072abb3157774c3ada63e5b5ffcbd0cbc8f2bff370d9fbcd58ad20b6"

  url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac.dmg"
  name "SiYuan"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-note/siyuan"

  app "SiYuan.app"

  zap trash: [
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
    "~/.siyuan",
  ]
end
