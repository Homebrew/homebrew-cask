cask "prefs-editor" do
  version "1.2.5.3.1"
  sha256 "1d59f2094fab451d8d669aa5490a8dadc4d5f534f78f10dbefa1cb4eed7f3a45"

  url "https://files.tempel.org/Various/OSX_Prefs_Editor/PrefsEditor-#{version.major_minor_patch}_64bit.zip"
  name "Prefs Editor"
  desc "Graphical user interface for the 'defaults' command"
  homepage "https://apps.tempel.org/PrefsEditor/"

  livecheck do
    url "https://apps.tempel.org/PrefsEditor/appcast.xml"
    strategy :sparkle
  end

  app "Prefs Editor.app"

  zap trash: [
    "~/Library/Preferences/org.tempel.prefseditor.plist",
    "~/Library/Saved Application State/org.tempel.prefseditor.savedState",
  ]
end
