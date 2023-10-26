cask "avogadro" do
  version "1.98.0"
  sha256 "424766cf79b79b12f588a90feca3b16a59943af8d63272eacbf27c0ae6293a50"

  url "https://github.com/OpenChemistry/avogadrolibs/releases/download/#{version}/Avogadro2-#{version}-Darwin.dmg",
      verified: "github.com/OpenChemistry/avogadrolibs/"
  name "Avogadro"
  desc "Molecule editor and visualizer"
  homepage "https://avogadro.cc/"

  app "Avogadro2.app"

  zap trash: [
    "~/Library/Preferences/org.openchemistry.Avogadro.plist",
    "~/Library/Saved Application State/cc.avogadro.savedState",
    "~/Library/Application Support/OpenChemistry/Avogadro",
  ]
end
