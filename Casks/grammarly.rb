cask "grammarly" do
  version "1.5.78"
  sha256 "fb2e85686b41ff29efb38e0c65566b070d5e9cf1c682bf71473ef3d49f3296ac"

  url "https://download-editor.grammarly.com/osx/Grammarly#{version}-osx.zip"
  name "Grammarly"
  desc "Utility to fix grammar errors and style issues in text"
  homepage "https://www.grammarly.com/"

  livecheck do
    url "https://update.grammarly.com/desktop-editor/osx"
    regex(/Grammarly[._-]?v?(\d+(?:\.\d+)+)[._-]osx\.zip/i)
  end

  auto_updates true

  app "Grammarly.app"

  zap trash: [
    "~/Library/Application Support/Grammarly",
    "~/Library/Caches/com.grammarly.DesktopEditor",
    "~/Library/Caches/com.grammarly.DesktopEditor.ShipIt",
    "~/Library/Logs/Grammarly",
    "~/Library/Preferences/com.grammarly.DesktopEditor.helper.plist",
    "~/Library/Preferences/com.grammarly.DesktopEditor.plist",
    "~/Library/Saved Application State/com.grammarly.DesktopEditor.savedState",
  ]
end
