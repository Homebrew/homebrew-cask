cask "shortcutdetective" do
  version "1.0"
  sha256 :no_check

  url "https://www.irradiatedsoftware.com/downloads/ShortcutDetective.zip"
  name "ShortcutDetective"
  desc "Detects which app receives a keyboard shortcut (hotkey)"
  homepage "https://www.irradiatedsoftware.com/labs/"

  no_autobump! because: :requires_manual_review

  deprecate! date: "2024-07-15", because: :unmaintained

  app "ShortcutDetective.app"

  zap trash: "~/Library/Preferences/com.irradiatedsoftware.ShortcutDetective.plist"

  caveats do
    requires_rosetta
  end
end
