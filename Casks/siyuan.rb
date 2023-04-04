cask "siyuan" do
  arch arm: "-arm64"

  version "2.8.3"
  sha256 arm:   "45827eee9b1b87a8bfb5c783115aae28ff19c1f78abe04e2187c4d116f2618d6",
         intel: "48d5cfaa9905e2a788da4f1a4ea4137444ba247a4d241fd2e8c1f969ed75b765"

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
