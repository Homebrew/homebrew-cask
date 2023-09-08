cask "siyuan" do
  arch arm: "-arm64"

  version "2.10.4"
  sha256 arm:   "f10fce089fa2b5a101577612eecce122b0dae4d8beabd162cded402eae4e6d27",
         intel: "d64a3513c40f1079dd50dd6aec1b1b75ebd204a3f7e0258dfcadb5fb019f6dad"

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
