cask "avogadro" do
  arch arm: "-arm64"

  version "1.102.0"
  sha256 arm:   "df634e86ac90555cc87caf0d6d78c60295b8b80eb3b2b5f143fb57593e4a6cd3",
         intel: "7b57b6faba8560b40f7669fca2b8e25f7e77e82e7ab0dca79296a878db9b15e4"

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
