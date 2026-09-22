cask "clarify" do
  version "1.7.10"
  sha256 "a007ac22e37a77a4b13d532ca3b67d0dd79aea05df786d630d86df9f5b2dab7a"

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
