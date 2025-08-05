cask "prefs-editor" do
  version "1.4.1"
  sha256 "bfa48939c288455b0f3b7647759d6bb59d022a046209b408290341a6493705a8"

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
