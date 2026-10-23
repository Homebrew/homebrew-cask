cask "avogadro" do
  arch arm: "-arm64"

  version "2.1.0"
  sha256 arm:   "d6bdc4348ccf53c01e14259bdaedb489c8584da356d78abe4f421099ea95229c",
         intel: "991a30a87c8305e20cb85afbd04638dfe8854f6cce6848f0caf029bf81e1abe3"

  url "https://github.com/OpenChemistry/avogadrolibs/releases/download/#{version}/Avogadro2-#{version}-Darwin#{arch}.dmg"
  name "Avogadro"
  desc "Molecule editor and visualiser"
  homepage "https://avogadro.cc/"

  depends_on :macos

  app "Avogadro2.app"

  zap trash: [
    "~/Library/Application Support/OpenChemistry/Avogadro",
    "~/Library/Preferences/org.openchemistry.Avogadro.plist",
    "~/Library/Saved Application State/cc.avogadro.savedState",
  ]
end
