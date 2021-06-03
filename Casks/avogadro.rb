cask "avogadro" do
  version "1.94.0"
  sha256 "901447f1d160f7911c8f4609b762f0611f4a8effc9b3db3ba9fa201b686e8926"

  url "https://github.com/OpenChemistry/avogadrolibs/releases/download/#{version}/Avogadro2-#{version}-Darwin.dmg",
      verified: "github.com/OpenChemistry/avogadrolibs/"
  name "Avogadro"
  desc "Molecule editor and visualizer"
  homepage "https://avogadro.cc/"

  app "Avogadro2.app"
end
