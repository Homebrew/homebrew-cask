cask "mightymike" do
  version "3.0.1"
  sha256 "8c772b2777ac29b52775c9ce8b4281406fe62f0d4565d478112c15408b3a2efc"

  url "https://github.com/jorio/MightyMike/releases/download/v#{version}/MightyMike-#{version}-mac.dmg",
      verified: "github.com/jorio/MightyMike/"
  name "Mighty Mike"
  desc "Top-down action game from Pangea Software (a.k.a. Power Pete)"
  homepage "https://pangeasoft.net/mightymike/"

  app "Mighty Mike.app"
  artifact "Documentation", target: "#{ENV["HOME"]}/Library/Application Support/MightyMike"

  zap trash: [
    "~/Library/Application Support/MightyMike",
    "~/Library/Preferences/MightyMike",
    "~/Library/Saved Application State/io.jor.mightymike.savedState",
  ]
end
