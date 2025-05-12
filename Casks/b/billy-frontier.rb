cask "billy-frontier" do
  version "1.1.1"
  sha256 "d8200ed658786406d0f8ef3ad56ed9eb3a0c4223a689685888e1454d1bb2de1e"

  url "https://github.com/jorio/BillyFrontier/releases/download/v#{version}/BillyFrontier-#{version}-mac.dmg",
      verified: "github.com/jorio/BillyFrontier/"
  name "Billy Frontier"
  desc "Arcade style, cowboys in space themed action game from Pangea Software"
  homepage "https://jorio.itch.io/billyfrontier"

  app "Billy Frontier.app"
  artifact "Instructions.pdf", target: "~/Library/Application Support/BillyFrontier/Instructions.pdf"

  zap trash: [
    "~/Library/Application Support/BillyFrontier",
    "~/Library/Preferences/BillyFrontier",
    "~/Library/Saved Application State/io.jor.billyfrontier.savedState",
  ]
end
