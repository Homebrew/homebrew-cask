cask "prefs-editor" do
  version "1.3.2.3.1"
  sha256 :no_check

  url "https://files.tempel.org/Various/OSX_Prefs_Editor/PrefsEditor.zip"
  name "Prefs Editor"
  desc "Graphical user interface for the 'defaults' command"
  homepage "https://apps.tempel.org/PrefsEditor/"

  livecheck do
    url "https://apps.tempel.org/PrefsEditor/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Prefs Editor.app"

  zap trash: [
    "~/Library/Preferences/org.tempel.prefseditor.plist",
    "~/Library/Saved Application State/org.tempel.prefseditor.savedState",
  ]
end
