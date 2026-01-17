cask "avogadro" do
  arch arm: "-arm64"

  version "1.102.1"
  sha256 arm:   "7dc926f4dd31f58bbd1de07e8e64ac4e93b9e63e5427a65fc6137bca21e3c381",
         intel: "aaa2855cdc824a8ae5412d2a52cb6e8d02bc5a08013bbd6c6ae70877c4aabae9"

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
