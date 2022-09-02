cask "block-keeper" do
  version "2.2.0"
  sha256 "939c379f54a71a6a31dc351610a21bf254e9aa0b11812fa096a69d2501cad1a5"

  url "https://github.com/DallasMcNeil/Block-Keeper/releases/download/v#{version}/Block-Keeper.dmg",
      verified: "github.com/DallasMcNeil/Block-Keeper/"
  name "Block Keeper"
  desc "Cross platform desktop cubing timer"
  homepage "https://dallasmcneil.com/projects/blockkeeper/"

  app "Block Keeper.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/Block Keeper*",
    "~/Library/Application Support/Block Keeper",
    "~/Library/Logs/Block Keeper",
    "~/Library/Preferences/com.dallasmcneil.blockkeeper.plist",
    "~/Library/Saved Application State/com.dallasmcneil.blockkeeper.savedState",
  ]
end
