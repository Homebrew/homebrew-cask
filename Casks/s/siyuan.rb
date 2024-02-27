cask "siyuan" do
  arch arm: "-arm64"

  version "3.0.1"
  sha256 arm:   "e72508bf7e4070c820fb134d5468a9c190f463ea430af5cd838b400e6d7ae6a4",
         intel: "b1b1e1d365c72cf88ca034ffc7d8158900ba9927b953a0be49a7185dc60d4c48"

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
