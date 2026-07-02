cask "clarify" do
  version "1.6.5"
  sha256 "59280c5e657a59af872758ce3d1235cdb61c0c948e107584e9344aadac071201"

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
