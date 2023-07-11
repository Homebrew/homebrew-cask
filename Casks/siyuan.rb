cask "siyuan" do
  arch arm: "-arm64"

  version "2.9.5"
  sha256 arm:   "e7d35243d433f0017122f0badfb924bfdc45c6c9731d94dbc60de2f95dbd9254",
         intel: "5526cf7af9d307fb878ae655a4227257838c15e3c83524d951d44b07dd31fcda"

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
