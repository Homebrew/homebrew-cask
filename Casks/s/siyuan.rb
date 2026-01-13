cask "siyuan" do
  arch arm: "-arm64"

  version "3.5.3"
  sha256 arm:   "6e38eb79aa4e937841c7e85be7b881a05ad9c9682de704d405ebf39f9fa3f9eb",
         intel: "434e60d7ee0bbcab1cea3510f72c5ab74e4b5810975f0434fad50276b05ec94a"

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
