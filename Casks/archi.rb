cask "archi" do
  version "4.7.1"
  sha256 "19fa57ef812949963e1af5cc2516fc5f544f6e86dd69bd5608794e11935ee07d"

  url "https://www.archimatetool.com/downloads/archi/Archi-Mac-#{version}.zip"
  appcast "https://github.com/archimatetool/archi/releases.atom"
  name "Archi"
  desc "Toolkit for the ArchiMate modelling language"
  homepage "https://www.archimatetool.com/"

  app "Archi/Archi.app"

  preflight do
    # https://github.com/archimatetool/archi/issues/555
    Quarantine.release! download_path: "#{staged_path}/Archi/Archi.app"
  end

  zap trash: [
    "~/Library/Application Support/Archi#{version.major}",
    "~/Library/Caches/com.archimatetool.editor",
    "~/Library/Preferences/com.archimatetool.editor.plist",
    "~/Library/Saved Application State/com.archimatetool.editor.savedState",
  ]
end
