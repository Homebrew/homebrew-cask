cask "siyuan" do
  arch arm: "-arm64"

  version "2.8.10"
  sha256 arm:   "5bb000564a1c5f7c920ca64222fc1d0d168dfd4553d4e227e645fac55c63156d",
         intel: "0f63821f2455929dd7a5c93936c31fce42154751db769445f6f731cbbf8b3091"

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
