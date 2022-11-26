cask "siyuan" do
  arch arm: "-arm64"

  version "2.5.1"
  sha256 arm:   "3d9e3916a314c527c1dc54555014ed92af3dc098e2b8b851ad7a36d92e9e95eb",
         intel: "55ef77700bbb8ff5e3d9a5d77351e4b3c2e6eb8cbb3e084723b3aaeb308b9b27"

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
