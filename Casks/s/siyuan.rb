cask "siyuan" do
  arch arm: "-arm64"

  version "3.1.8"
  sha256 arm:   "7895d5855e238ecdd0705a68891df8a2c7853385b3a1e1d44acc8d9c4043d618",
         intel: "3c97a8e675a9f1a3d52b131f40f366839c1eb73ca6c2eb2edfaf27edc0063eb6"

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
