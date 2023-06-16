cask "nanosaur" do
  version "1.4.4"
  sha256 "fac89eae8f51d3b4462e6aae1c858f017ed7b2738b4d8a99852933b1d5d7dc12"

  url "https://github.com/jorio/Nanosaur/releases/download/v#{version}/Nanosaur-#{version}-mac.dmg",
      verified: "github.com/jorio/Nanosaur/"
  name "Nanosaur"
  desc "Dinosaur 3rd person shooter game from Pangea Software"
  homepage "https://jorio.itch.io/nanosaur"

  app "Nanosaur.app"
  artifact "Documentation", target: "~/Library/Application Support/Nanosaur"

  zap trash: [
    "~/Library/Preferences/Nanosaur",
    "~/Library/Saved Application State/io.jor.nanosaur.savedState",
  ]
end
