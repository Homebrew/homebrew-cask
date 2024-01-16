cask "siyuan" do
  arch arm: "-arm64"

  version "2.12.3"
  sha256 arm:   "1a6f52c4c4fb7423d71ce401bb60c20bb009235935e02da7931a8d69ce23d5f2",
         intel: "70e2ae78a22519a9d3300a543c2fb3e4b35d5d17ea1c49c9af68dd02958df410"

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
