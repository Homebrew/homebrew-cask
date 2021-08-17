cask "avogadro" do
  version "1.95.0"
  sha256 "a8f67fdce30b7984cce850e6046ef7507104bd2a3a197b0ab645d9a4be597ccf"

  url "https://github.com/OpenChemistry/avogadrolibs/releases/download/#{version}/Avogadro2-#{version}-Darwin.dmg",
      verified: "github.com/OpenChemistry/avogadrolibs/"
  name "Avogadro"
  desc "Molecule editor and visualizer"
  homepage "https://avogadro.cc/"

  app "Avogadro2.app"
end
