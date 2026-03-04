cask "siyuan" do
  arch arm: "-arm64"

  version "3.5.9"
  sha256 arm:   "eb174762bcd7d0fcb071d4ac4770a0fd023f4a0d7d25d4ed8b7f40b5eedd9740",
         intel: "d3e107c65f0d0c320577b74e4c71a07a3fd69e868be996b32152d2276c717e30"

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
