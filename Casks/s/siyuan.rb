cask "siyuan" do
  arch arm: "-arm64"

  version "3.6.4"
  sha256 arm:   "82bdc000ce2506f750cbf47c9357712a34a54e31aab00155a47fa5b4bbd95eef",
         intel: "bc0c0806826c82b765127a87714789c0a464bd75a28b80700412be08399680ed"

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
