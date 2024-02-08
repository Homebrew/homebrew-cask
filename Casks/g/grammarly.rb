cask "grammarly" do
  version "1.5.81"
  sha256 "bb30c10d4681ae753efccb055ea97290e9f208f7e62798a4be3b555b0db2230e"

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
