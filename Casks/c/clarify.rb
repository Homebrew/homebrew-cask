cask "clarify" do
  version "1.6.6"
  sha256 "3ecb50009a829b5a2cb9fd2d4596a52cc0a5ca1619edc7db28eb807c4c9db095"

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
