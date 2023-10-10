cask "siyuan" do
  arch arm: "-arm64"

  version "2.10.9"
  sha256 arm:   "7cf3f71817e79c7d02edc07249719568f38c65aa7818a46782ff909107ffc55f",
         intel: "7d0f9198c206b5b907d778addc4636407a66fb042b13b14eb6e7ec408ddbe343"

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
