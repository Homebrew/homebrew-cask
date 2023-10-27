cask "avogadro" do
  arch arm: "-arm64"

  version "1.98.0"
  sha256 arm:   "ae0911223b408b22652b81a99a71b7f08b0eb7a0026bfdd3e2d7765f2408f5e7",
         intel: "424766cf79b79b12f588a90feca3b16a59943af8d63272eacbf27c0ae6293a50"

  url "https://github.com/OpenChemistry/avogadrolibs/releases/download/#{version}/Avogadro2-#{version}-Darwin#{arch}.dmg",
      verified: "github.com/OpenChemistry/avogadrolibs/"
  name "Avogadro"
  desc "Molecule editor and visualizer"
  homepage "https://avogadro.cc/"

  app "Avogadro2.app"

  zap trash: [
    "~/Library/Application Support/OpenChemistry/Avogadro",
    "~/Library/Preferences/org.openchemistry.Avogadro.plist",
    "~/Library/Saved Application State/cc.avogadro.savedState",
  ]
end
