cask "siyuan" do
  arch arm: "-arm64"

  version "3.6.1"
  sha256 arm:   "334ba8a28205c0d05694ad2bf07eebd4cb3f96b54e0832448a4b2aa40276c35a",
         intel: "866338722c5478a6c76f7cbc7a5202738bbe82bf907f16210ddf586f950cd3cf"

  url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "SiYuan"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-note/siyuan"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "SiYuan.app"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
