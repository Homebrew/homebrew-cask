cask "avogadro" do
  arch arm: "-arm64"

  version "1.98.1"
  sha256 arm:   "c32ae585eeed41c8cad483874a7d08375a9a39c19f9ba6268f7ec1acab68e934",
         intel: "1860e92680ece19ed8e1569b610a36e6631634e3dee6c4a66b64f4dd6e3976de"

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
