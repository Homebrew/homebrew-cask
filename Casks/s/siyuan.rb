cask "siyuan" do
  arch arm: "-arm64"

  version "2.10.3"
  sha256 arm:   "48ec4426b15c777191728f9b8004045cd829879e55f07444e74be46c1aae6d90",
         intel: "bfaab469fab7f9c87853c8bd8150157d0636c0be5f5cbc03c9ed33156e06be0a"

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
