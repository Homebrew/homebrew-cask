cask "archi" do
  version "4.8.1"
  sha256 "4f31089ce448f78e3f66b7f80075783f4907bd1afe35362f560dcdb7137e262c"

  url "https://www.archimatetool.com/downloads/anusol#{version.no_dots}/Archi-Mac-#{version}.zip"
  name "Archi"
  desc "Toolkit for the ArchiMate modelling language"
  homepage "https://www.archimatetool.com/"

  livecheck do
    url "https://github.com/archimatetool/archi.git"
    regex(/^release[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  app "Archi/Archi.app"

  zap trash: [
    "~/Library/Application Support/Archi#{version.major}",
    "~/Library/Caches/com.archimatetool.editor",
    "~/Library/Preferences/com.archimatetool.editor.plist",
    "~/Library/Saved Application State/com.archimatetool.editor.savedState",
  ]
end
