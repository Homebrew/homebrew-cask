cask "mighty-mike" do
  version "3.0.2"
  sha256 "7643e45f480ef148655ab76790b8fa5b7688f041bf174244f8741e285e6092d9"

  url "https://github.com/jorio/MightyMike/releases/download/v#{version}/MightyMike-#{version}-mac.dmg",
      verified: "github.com/jorio/MightyMike/"
  name "Mighty Mike"
  desc "Top-down action game from Pangea Software (a.k.a. Power Pete)"
  homepage "https://jorio.itch.io/mightymike"

  app "Mighty Mike.app"
  artifact "Documentation", target: "~/Library/Application Support/MightyMike"

  zap trash: [
    "~/Library/Preferences/MightyMike",
    "~/Library/Saved Application State/io.jor.mightymike.savedState",
  ]
end
