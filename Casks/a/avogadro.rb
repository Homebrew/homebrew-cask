cask "avogadro" do
  arch arm: "-arm64"

  version "1.101.0"
  sha256 arm:   "df6f30b975d7a62ac7030a2bc06e636eba1cf76ba37ee88eae95f9c904a8e868",
         intel: "5096684fd8c16b05190fe45b22a2b7f4d7e6ed19609c8af3f56e973266e71c90"

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
