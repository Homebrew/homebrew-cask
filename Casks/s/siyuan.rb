cask "siyuan" do
  arch arm: "-arm64"

  version "2.10.13"
  sha256 arm:   "7642a93314239af55dd17f3761db0baee9cb67a0421ddaae981f926627a7d47e",
         intel: "ecbe72c390cd1e238ffb526cef0fb8ead977b4cf4a7d8f6a737714b8e5d99dcc"

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
