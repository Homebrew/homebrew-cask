cask "clarify" do
  version "1.7.9"
  sha256 "6f272c448e170ed9e04ca3d6e4e1a2a4cea08a818a32c96b5a242e4ca271ec83"

  url "https://github.com/clarifyhq/desktop-app-releases/releases/download/v#{version}/Clarify.dmg"
  name "Clarify"
  desc "Autonomous CRM"
  homepage "https://clarify.ai/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Clarify.app"

  uninstall quit: "com.clarify.desktop"

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
