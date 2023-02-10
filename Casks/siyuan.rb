cask "siyuan" do
  arch arm: "-arm64"

  version "2.7.4"
  sha256 arm:   "6cbcc7b3a878bf7a93485e30e878d30c1a6e888d4fdb38c532331352aaa03a73",
         intel: "224296c09a505ebe86094cdf3e733dd706e36856b1efe5e9515129e2f73b395b"

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
