cask "siyuan" do
  arch arm: "-arm64"

  version "3.0.13"
  sha256 arm:   "50f4d62fa8ccff9c0cd2e301ef76a3fba13be2be78d22792376235d56623488e",
         intel: "df922249bd162a53f79186da5d3ed14bc2d5576a9f9a9310ddfc2ea1f552b69d"

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
