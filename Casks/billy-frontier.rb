cask "billy-frontier" do
  version "1.1.0"
  sha256 "d75d85a926bb84a08e7dbf2314773a2708fec378cb90e05406406fc9506bf527"

  url "https://github.com/jorio/BillyFrontier/releases/download/v#{version}/BillyFrontier-#{version}-mac.dmg", verified: "github.com/jorio/BillyFrontier"
  name "Billy Frontier"
  desc "Arcade style action game with a “cowboys in space” theme"
  homepage "https://jorio.itch.io/billyfrontier"

  app "Billy Frontier.app"

  zap trash: [
    "~/Library/Preferences/billyfrontier",
    "~/Library/Saved Application State/io.jor.billyfrontier.savedState",
  ]
end
