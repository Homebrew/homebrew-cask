cask "siyuan" do
  arch arm: "-arm64"

  version "3.7.2"
  sha256 arm:   "1c6844b5d31c4eba3d03461861147c200b562a6169405640ff2e941cc5305dfa",
         intel: "e17229eb0b2dda5b22cdd3e630d821916222f1002ab1a13e23d70960e4b06a29"

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
