cask "avogadro" do
  version "1.95.1"
  sha256 "2fc23987f0955f19f3d58380e5e42bb58ee00a9c383953a2fb6caa9f95922f39"

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
