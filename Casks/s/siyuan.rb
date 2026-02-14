cask "siyuan" do
  arch arm: "-arm64"

  version "3.5.7"
  sha256 arm:   "9e84e9e10c34ced8e166896804084efa3133aa16f1b3cdced8d56c0626742421",
         intel: "017c8c9f7c54763509b2ddfd20acda595bf47f1cfceec2da04d240340d6540e0"

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
