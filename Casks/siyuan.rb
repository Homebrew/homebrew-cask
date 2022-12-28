cask "siyuan" do
  arch arm: "-arm64"

  version "2.6.0"
  sha256 arm:   "495297534fd4ba8f4318f157b6902380ac7d32ebe2b8f4f7c3b581d66d1ac305",
         intel: "617b64e598a54aa6ce87df8966b269e0332f56f748e8c0bce6c30466c70d8351"

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
