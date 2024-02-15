cask "avogadro" do
  arch arm: "-arm64"

  version "1.99.0"
  sha256 arm:   "360c26613e77a5c6500eb27234166d040c196cde840f82bad326ca933b6226d3",
         intel: "c206942b25018c918daa0d05811eb48f6f0eec65e14cbbab1e5839cbe0052d38"

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
