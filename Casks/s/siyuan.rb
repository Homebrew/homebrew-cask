cask "siyuan" do
  arch arm: "-arm64"

  version "2.10.1"
  sha256 arm:   "1cba822d284b11d350ce876fdaae30b0f9df616d2e36b2d1c82bf9b4711274f2",
         intel: "0d99e3f673d825ba4af7a86d66b68340c5d5a7d3e90aeed9074cfbeb6f04d352"

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
