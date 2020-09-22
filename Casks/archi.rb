cask "archi" do
  version "4.7.1,71cb57dd"
  sha256 "19fa57ef812949963e1af5cc2516fc5f544f6e86dd69bd5608794e11935ee07d"

  url "https://www.archimatetool.com/downloads/#{version.after_comma}/Archi-Mac-#{version.before_comma}.zip"
  appcast "https://github.com/archimatetool/archi/releases.atom"
  name "Archimate modeling"
  desc "Toolkit for the ArchiMate modelling language"
  homepage "https://www.archimatetool.com/"

  auto_updates true

  suite "Archi"

  zap trash: [
    "~/Library/Application Support/Archi4",
  ]
end
