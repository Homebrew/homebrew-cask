cask "siyuan" do
  arch arm: "-arm64"

  version "3.5.2"
  sha256 arm:   "6e269fa6c283832e7307237abf9b1b68ce37142a570ea5968bc03d698b82660b",
         intel: "7ea8058a5136a4466b04102a761636fd6ea2c57839cf4da9a532d8996c13a9d7"

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
