cask "siyuan" do
  arch arm: "-arm64"

  version "2.7.9"
  sha256 arm:   "864e7ab7a1d33fbfac32987f7aa5d064dd37152fd2caa4ec61c3355de8464644",
         intel: "25bb81a6d10dae7658760fb90fb63ecaa49e9a2b1ce50861d38080603a173b87"

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
