cask "siyuan" do
  arch arm: "-arm64"

  version "2.9.0"
  sha256 arm:   "8a4e18809a3a16822b14ba43ed14742576f1b24d0830e9941253f66fa7f45e98",
         intel: "0d6bac20638bae275217ef7ddfefe68da421172a5f6b5b464f4a865a2f1a8500"

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
