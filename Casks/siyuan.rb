cask "siyuan" do
  arch arm: "-arm64"

  version "2.8.2"
  sha256 arm:   "2f5cdd5af616e29c473c7ef2d9c9c96c6a106024ff005566ce1140d7101e6a4a",
         intel: "d41910e00702344472c538891e4bd6abd85936373abd6fdce64bd14c4de8d05b"

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
