cask "siyuan" do
  arch arm: "-arm64"

  version "3.1.17"
  sha256 arm:   "771322d0075e18f750abc33cbd4ef22a314c6f2eb2da2c5ca6ff702c64fe3bd9",
         intel: "3e2353b4c5dc2c97ca877bc04bc711be79f9f89e3edc628f20aeb561a7f6973c"

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
