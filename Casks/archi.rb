cask "archi" do
  version "4.8.0"
  sha256 :no_check

  url "https://www.archimatetool.com/downloads/archi480/Archi-Mac-4.8.0.zip"
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
