cask "mightymike" do
  version "3.0.0"
  sha256 "e0eb90048416aafa93025173fad4b5813d894eb930cab96f4c84607124300ff4"

  url "https://github.com/jorio/MightyMike/releases/download/v#{version}/MightyMike-#{version}-mac.dmg",
      verified: "github.com/jorio/MightyMike/"
  name "Mighty Mike"
  desc "Top-down action game from Pangea Software (a.k.a. Power Pete)"
  homepage "https://pangeasoft.net/mightymike/"

  app "MightyMike.app"
  artifact "Documentation", target: "#{ENV["HOME"]}/Library/Application Support/MightyMike"

  zap trash: "~/Library/Preferences/MightyMike"
end
