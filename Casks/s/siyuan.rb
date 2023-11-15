cask "siyuan" do
  arch arm: "-arm64"

  version "2.10.15"
  sha256 arm:   "93e28a24f80d73fbd2fad294c97a05903ee12a8abe1682ebd94849edb5c82af2",
         intel: "bcc8410e8cde5ecb137b22a0a0588dd1a6bd42388273bd5e58213a06a8fc7e46"

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
