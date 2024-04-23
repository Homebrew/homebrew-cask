cask "siyuan" do
  arch arm: "-arm64"

  version "3.0.11"
  sha256 arm:   "2b457b687adaf5de8ccaed24234e88c32c432fd5f31faeebd877f154cae83ad5",
         intel: "e863b5703544f83930959dd814d7f239ddca7b42ce02150bbab175db0e347c48"

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
