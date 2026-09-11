cask "siyuan" do
  arch arm: "-arm64"

  version "3.8.3"
  sha256 arm:   "f007328fb8e2e140b5a67a8e7122316560c809606dcf6f99d74677331e0996e9",
         intel: "463d4f2fab93d3e5278e1e46eac0427adc3c8d30b54a45771f42c08e8516216e"

  url "https://github.com/siyuan-note/siyuan/releases/download/v#{version}/siyuan-#{version}-mac#{arch}.dmg"
  name "SiYuan"
  desc "Local-first personal knowledge management system"
  homepage "https://github.com/siyuan-note/siyuan"

  auto_updates true
  depends_on macos: :monterey

  app "SiYuan.app"

  zap trash: [
    "~/.siyuan",
    "~/Library/Application Support/SiYuan",
    "~/Library/Preferences/org.b3log.siyuan.plist",
    "~/Library/Saved Application State/org.b3log.siyuan.savedState",
  ]
end
