cask "siyuan" do
  arch arm: "-arm64"

  version "3.8.0"
  sha256 arm:   "1bb203ba552983080e3a6add63c33cc99ebd57fed908219136eab929b17d2783",
         intel: "22b6aed5fb5836e4d467d2c38af2dd475e314a184a0bd04ded273b1c783748ec"

  url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "SiYuan"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-note/siyuan"

  auto_updates true
  depends_on macos: :monterey

  app "SiYuan.app"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
