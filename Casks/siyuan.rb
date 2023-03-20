cask "siyuan" do
  arch arm: "-arm64"

  version "2.7.10"
  sha256 arm:   "53779248fccde240a26320549b1f1b8c4cca9388851b189071f3060fe5dd2862",
         intel: "ae085348390a1654cd689ee929559697cda2edf965cda4b4a2b7a6923305420b"

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
