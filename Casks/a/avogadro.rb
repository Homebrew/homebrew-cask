cask "avogadro" do
  arch arm: "-arm64"

  version "1.103.0"
  sha256 arm:   "07abd6b4b7f4685f76dca04a06a27ea9eccc61fbc5fb5214359fbd1fbd1d2f3e",
         intel: "af4b58b8f569f8b52aba0c3f6f2b0256a003a70df96f6d0d259eb57d3a752e5a"

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
