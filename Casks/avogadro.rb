cask "avogadro" do
  version "1.94.0"
  sha256 "305d81a2dfcd47f3ee96ca072847bd8fe0d2de2c9a9e21d213a9a79da481e40e"

  url "https://github.com/OpenChemistry/avogadrolibs/releases/download/#{version}/Avogadro2-#{version}-Darwin.dmg",
      verified: "github.com/OpenChemistry/avogadrolibs/"
  name "Avogadro"
  desc "Molecule editor and visualizer"
  homepage "https://avogadro.cc/"

  app "Avogadro2.app"
end
