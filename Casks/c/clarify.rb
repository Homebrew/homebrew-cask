cask "clarify" do
  version "1.7.3"
  sha256 "8ba1e6c47080b12822c0cd76c8a7cd2982169b17a2ad849210741fc5851aa63e"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.clarify.desktop.sfl*",
    "~/Library/Caches/com.clarify.desktop",
    "~/Library/Caches/com.clarify.desktop.ShipIt",
    "~/Library/HTTPStorages/com.clarify.desktop",
    "~/Library/Preferences/com.clarify.desktop.plist",
    "~/Library/Saved Application State/com.clarify.desktop.savedState",
  ]
end
