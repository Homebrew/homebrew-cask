cask "avogadro" do
  version "1.97.0"
  sha256 "feb33b01de7f83e74ccae47f251803baeef6de727b3a19622921bfa7d289f631"

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
