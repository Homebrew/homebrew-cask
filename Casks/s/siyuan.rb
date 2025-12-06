cask "siyuan" do
  arch arm: "-arm64"

  version "3.4.2"
  sha256 arm:   "713256324a928267c30cbd5d5785819aaab0c8b11a3a83bfc399f5a19ceb4847",
         intel: "e3056cef63d4d81d5a857ec5de030c7ab4a3c5628b3208a5891c80cf3c146c01"

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
