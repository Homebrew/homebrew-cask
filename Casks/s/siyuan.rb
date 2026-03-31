cask "siyuan" do
  arch arm: "-arm64"

  version "3.6.2"
  sha256 arm:   "6eec49bf45061268bebdcd4fbef4fe2cd14f2920e0d8cc2f7bfa904ae196e524",
         intel: "42aab7ed54b03e00a2a367342a9b3d1a10c604cd08fc53239179e4cb1cb8242a"

  url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "SiYuan"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-note/siyuan"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "SiYuan.app"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
