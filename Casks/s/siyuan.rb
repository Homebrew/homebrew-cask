cask "siyuan" do
  arch arm: "-arm64"

  version "3.1.32"
  sha256 arm:   "a6d3a62d7c156c6e2ddeccfcc2dc96f427a4a1bac1a0456ebe512e4a4dbf4a21",
         intel: "f26a65d26fecb9aec89d015149ac6e786a31934d924771d629bef1e1bc411132"

  url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "SiYuan"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-note/siyuan"

  depends_on macos: ">= :catalina"

  app "SiYuan.app"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
