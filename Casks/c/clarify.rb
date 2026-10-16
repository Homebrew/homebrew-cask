cask "clarify" do
  version "1.7.16"
  sha256 "cfe074088840d7b5795360ebe295a580dbe861988ba42bae3181fcf84dd5bfbd"

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
