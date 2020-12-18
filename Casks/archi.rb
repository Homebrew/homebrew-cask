cask "archi" do
  version "4.8.0"
  sha256 "dab1df62d8b99f1aabdf85e993d9ce995003d48df32afb3aaa8e229152780e53"

  url "https://www.archimatetool.com/downloads/a#{version.no_dots}/Archi-Mac-#{version}.zip"
  appcast "https://github.com/archimatetool/archi/releases.atom"
  name "Archi"
  desc "Toolkit for the ArchiMate modelling language"
  homepage "https://www.archimatetool.com/"

  app "Archi/Archi.app"

  zap trash: [
    "~/Library/Application Support/Archi#{version.major}",
    "~/Library/Caches/com.archimatetool.editor",
    "~/Library/Preferences/com.archimatetool.editor.plist",
    "~/Library/Saved Application State/com.archimatetool.editor.savedState",
  ]
end
