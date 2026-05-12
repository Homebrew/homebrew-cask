cask "openusage" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.23"
  sha256 arm:   "127c9de8646e12aef12bef9e9f0e273a89a71462a838502b11826b707e92ff44",
         intel: "fb7c9769df39be01bf1b13c00e9127b2998b042c5ed0bec2f1fb63ab88793c21"

  url "https://github.com/robinebers/openusage/releases/download/v#{version}/OpenUsage_#{version}_#{arch}.dmg",
      verified: "github.com/robinebers/openusage/"
  name "OpenUsage"
  desc "AI usage tracker for Cursor, Claude Code, Codex, Copilot and more"
  homepage "https://www.openusage.ai/"

  auto_updates true
  depends_on macos: :monterey

  app "OpenUsage.app"

  zap trash: [
    "~/Library/Application Support/com.sunstory.openusage",
    "~/Library/Caches/com.sunstory.openusage",
    "~/Library/HTTPStorages/com.sunstory.openusage",
    "~/Library/Preferences/com.sunstory.openusage.plist",
    "~/Library/Saved Application State/com.sunstory.openusage.savedState",
    "~/Library/WebKit/com.sunstory.openusage",
  ]
end
