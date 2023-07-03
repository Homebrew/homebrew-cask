cask "siyuan" do
  arch arm: "-arm64"

  version "2.9.3"
  sha256 arm:   "e08394fda4623ad2dbabba9a525f88e312b7e7da11a8d6e85cc8239b0013bc1e",
         intel: "dbe59a50f25836c7c61d2277ec57bf9cf9f38395babd8c601143b45224045ec9"

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
