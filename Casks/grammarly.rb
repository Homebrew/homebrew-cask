cask "grammarly" do
  version "1.5.79"
  sha256 "32ac6b4e4edccc9ed3346c6a49e918b52bb90a0afa40b20f3d11f92617c9553a"

  url "https://download-editor.grammarly.com/osx/GrammarlyEditor#{version}-osx.zip"
  name "Grammarly"
  desc "Utility to fix grammar errors and style issues in text"
  homepage "https://www.grammarly.com/"

  livecheck do
    url "https://update.grammarly.com/desktop-editor/osx"
    regex(/GrammarlyEditor[._-]?v?(\d+(?:\.\d+)+)[._-]osx\.zip/i)
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
