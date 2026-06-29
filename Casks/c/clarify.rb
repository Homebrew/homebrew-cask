cask "clarify" do
  version "1.6.3"
  sha256 "ef7cb2abb111fc2478ddf0465e250258f30b2be414177bd732d98b496dc02a09"

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
