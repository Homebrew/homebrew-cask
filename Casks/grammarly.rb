cask "grammarly" do
  version "1.5.80"
  sha256 "7b9de277dead7e4c302e3a0c567e68435afca33179872a4e7e391205e2bf081e"

  url "https://download-editor.grammarly.com/osx/GrammarlyEditor#{version}-osx.zip"
  name "Grammarly"
  desc "Utility to fix grammar errors and style issues in text"
  homepage "https://www.grammarly.com/"

  livecheck do
    url "https://update.grammarly.com/desktop-editor/osx"
    regex(/GrammarlyEditor[._-]?v?(\d+(?:\.\d+)+)[._-]osx\.zip/i)
  end

  auto_updates true

  app "Grammarly Editor.app"

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
