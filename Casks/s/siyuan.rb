cask "siyuan" do
  arch arm: "-arm64"

  version "2.10.8"
  sha256 arm:   "b480ec636eff61345b8f52bf36d108d5621da0b18d1b8a3266d5671763079374",
         intel: "8b2284d06becb835657c8cbfb1a4f219e1f1adbbab2f1b833a01ff13fd462587"

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
