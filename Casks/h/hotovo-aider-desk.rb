cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.66.0"
  sha256 arm:   "d7dde3819cb3ef5716b486d2fecad0649b58036cb600a5977c4ac09dfcc7d61f",
         intel: "55427a238cc0cd260204769098c1e681883b126420633e7db05b7df485934d68"

  url "https://github.com/hotovo/aider-desk/releases/download/v#{version}/aider-desk-#{version}-macos-#{arch}.dmg"
  name "AiderDesk"
  desc "Desktop GUI for Aider AI pair programming"
  homepage "https://github.com/hotovo/aider-desk"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "aider-desk.app"

  zap trash: [
    "~/Library/Application Support/aider-desk",
    "~/Library/Logs/aider-desk",
    "~/Library/Preferences/com.hotovo.aider-desk.plist",
    "~/Library/Saved Application State/com.hotovo.aider-desk.savedState",
  ]
end
