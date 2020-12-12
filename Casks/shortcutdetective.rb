cask "shortcutdetective" do
  version "1.0"
  sha256 :no_check

  url "https://www.irradiatedsoftware.com/downloads/ShortcutDetective.zip"
  name "ShortcutDetective"
  desc "Detects which app receives a keyboard shortcut (hotkey)"
  homepage "https://www.irradiatedsoftware.com/labs/"

  app "ShortcutDetective.app"

  zap trash: "~/Library/Preferences/com.irradiatedsoftware.ShortcutDetective.plist"
end
