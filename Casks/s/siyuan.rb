cask "siyuan" do
  arch arm: "-arm64"

  version "3.0.14"
  sha256 arm:   "c1d9ded70f221276fe30f8f7c4b6e1c7ff5e8a83b4e7b541342054e8f735cea7",
         intel: "cda8f39652dd273dd929226b2c6fb0e9905f2d13e8171c9bad7b05e16b9cc732"

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
