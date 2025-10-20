cask "prefs-editor" do
  version "1.4.2"
  sha256 "72b99db5da69f1a35a727dbcf7b82afdc482b40ba1b5b612b8e91f8512b23c2d"

  url "https://files.tempel.org/Various/OSX_Prefs_Editor/PrefsEditor-#{version}.zip"
  name "Prefs Editor"
  desc "Graphical user interface for the 'defaults' command"
  homepage "https://apps.tempel.org/PrefsEditor/"

  livecheck do
    url "https://apps.tempel.org/PrefsEditor/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Prefs Editor.app"

  zap trash: [
    "~/Library/Preferences/org.tempel.prefseditor.plist",
    "~/Library/Saved Application State/org.tempel.prefseditor.savedState",
  ]
end
