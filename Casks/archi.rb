cask "archi" do
  version "4.8.0"
  sha256 "b18580e675017325cbf4b772e62fe97f84b59df1f7be8a253f99e89e2b6638b3"

  url "https://www.archimatetool.com/downloads/anusol#{version.no_dots}/Archi-Mac-#{version}.zip"
  name "Archi"
  desc "Toolkit for the ArchiMate modelling language"
  homepage "https://www.archimatetool.com/"

  livecheck do
    url "https://www.archimatetool.com/download/"
    regex(/id=["']?download["']?[^>]*data-version=["']?(\d+(?:\.\d+)*)["']?/i)
  end

  app "Archi/Archi.app"

  zap trash: [
    "~/Library/Application Support/Archi#{version.major}",
    "~/Library/Caches/com.archimatetool.editor",
    "~/Library/Preferences/com.archimatetool.editor.plist",
    "~/Library/Saved Application State/com.archimatetool.editor.savedState",
  ]
end
