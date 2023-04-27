cask "siyuan" do
  arch arm: "-arm64"

  version "2.8.6"
  sha256 arm:   "408b8ff724b4e128ab5204ad3ccf210b35b577cfde984d5108dbed6ec3177524",
         intel: "0e09076355329aec1e39e732783be0959c0194eb47d651a957bd6e1db7946d4a"

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
