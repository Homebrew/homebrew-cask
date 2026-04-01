cask "avogadro" do
  arch arm: "-arm64"

  version "2.0.0"
  sha256 arm:   "6605ec8934ff3206b60bde53f9a3624faf1bda73aa140ba6fbaa0593378b3a42",
         intel: "68730783f6d141faaa23bb9972e87fd83d35f6a0173ea7295d675c54a0e5d160"

  url "https://github.com/OpenChemistry/avogadrolibs/releases/download/#{version}/Avogadro2-#{version}-Darwin#{arch}.dmg",
      verified: "github.com/OpenChemistry/avogadrolibs/"
  name "Avogadro"
  desc "Molecule editor and visualiser"
  homepage "https://avogadro.cc/"

  app "Avogadro2.app"

  zap trash: [
    "~/Library/Application Support/OpenChemistry/Avogadro",
    "~/Library/Preferences/org.openchemistry.Avogadro.plist",
    "~/Library/Saved Application State/cc.avogadro.savedState",
  ]
end
