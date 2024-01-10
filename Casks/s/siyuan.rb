cask "siyuan" do
  arch arm: "-arm64"

  version "2.12.2"
  sha256 arm:   "1c58a82a02bcc0dc4ac3bcaabc3b1cb7e1db071fd6929287b9921d70addfebc8",
         intel: "5a60345c8c39d3d4a25b02af6905091041e1562553754050f61cf05c9a4fd754"

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
