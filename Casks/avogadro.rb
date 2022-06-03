cask "avogadro" do
  version "1.96.0"
  sha256 "4cfcf9e5a8e640c5f31499aa81a76d977e0ad7d4333777a0f3f3888488acebb7"

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
