cask "siyuan" do
  arch arm: "-arm64"

  version "3.0.3"
  sha256 arm:   "c5bf2c85069af5fcc8883bb8d208ec8791c4d2264a3ed7a4ed8a9320acfd844a",
         intel: "1361b7259c25414551cd28a8a9fab701b1c9161a7d057441eb202ae9a6ebc041"

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
