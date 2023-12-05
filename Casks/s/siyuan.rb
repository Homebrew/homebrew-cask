cask "siyuan" do
  arch arm: "-arm64"

  version "2.11.1"
  sha256 arm:   "9371a7906e6311bd71ff232bedfa419210838fd659e3e8cd96014efe46c83c20",
         intel: "d522fd76ca34423852deea6d6f5025616858410ce202a3d60fd024910addec7c"

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
