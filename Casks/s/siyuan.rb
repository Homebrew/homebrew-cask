cask "siyuan" do
  arch arm: "-arm64"

  version "3.7.1"
  sha256 arm:   "57aa35e6bf47d75034dc05ba7b5080f1d32afa5035f9542bf849eb755cbd3752",
         intel: "589e9ba877d255210be441602d9a2fd72b822c86aebe122f62f4b7d9ab7a53cb"

  url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "SiYuan"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-note/siyuan"

  auto_updates true
  depends_on macos: :monterey

  app "SiYuan.app"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
