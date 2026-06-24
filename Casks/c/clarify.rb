cask "clarify" do
  version "1.6.1"
  sha256 "e213cdb3ed33ea41a217759d3297380dd0e6c94a21e2d4c7230e03b8b1249388"

  url "https://github.com/clarifyhq/desktop-app-releases/releases/download/v#{version}/Clarify.dmg",
      verified: "github.com/clarifyhq/desktop-app-releases/"
  name "Clarify"
  desc "Autonomous CRM"
  homepage "https://clarify.ai/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Clarify.app"

  zap trash: [
    "~/Library/Application Support/clarify-desktop",
    "~/Library/Caches/com.clarify.desktop",
    "~/Library/Caches/com.clarify.desktop.ShipIt",
    "~/Library/HTTPStorages/com.clarify.desktop",
    "~/Library/Preferences/com.clarify.desktop.plist",
    "~/Library/Saved Application State/com.clarify.desktop.savedState",
  ]
end
