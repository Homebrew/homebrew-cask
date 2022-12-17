cask "otto-matic" do
  version "4.0.0"
  sha256 "a9d5a9301e40a3ab25146d96a917f7d32b3f3dc6d1b74d817c57abd0ee71a8ee"

  url "https://github.com/jorio/OttoMatic/releases/download/#{version}/OttoMatic-#{version}-mac.dmg",
      verified: "github.com/jorio/OttoMatic/"
  name "Otto Matic"
  desc "Science fiction 3D action/adventure game from Pangea Software"
  homepage "https://jorio.itch.io/ottomatic"

  app "Otto Matic.app"
  artifact "Documentation", target: "#{Dir.home}/Library/Application Support/OttoMatic"

  zap trash: [
    "~/Library/Preferences/OttoMatic",
    "~/Library/Saved Application State/io.jor.ottomatic.savedState",
  ]
end
