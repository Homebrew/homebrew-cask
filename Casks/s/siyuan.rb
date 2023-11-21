cask "siyuan" do
  arch arm: "-arm64"

  version "2.10.16"
  sha256 arm:   "cd6331cce004030b39159c6ad0d8adf86eca5b93962ee5cbd43a326113f1f2a0",
         intel: "40fcc9ba1ebb8953793057b246476b9a1d1130eb23f4cfe9ea5c04fd083a0549"

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
