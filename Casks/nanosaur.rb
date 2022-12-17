cask "nanosaur" do
  version "1.4.3"
  sha256 "8a2d638825b59395f3add7461d7d1f1438ad4f16f290d2992154f41fa23cd075"

  url "https://github.com/jorio/Nanosaur/releases/download/v#{version}/Nanosaur-#{version}-mac.dmg",
      verified: "github.com/jorio/Nanosaur/"
  name "Nanosaur"
  desc "Dinosaur 3rd person shooter game from Pangea Software"
  homepage "https://jorio.itch.io/nanosaur"

  app "Nanosaur.app"
  artifact "Documentation", target: "#{Dir.home}/Library/Application Support/Nanosaur"

  zap trash: [
    "~/Library/Preferences/Nanosaur",
    "~/Library/Saved Application State/io.jor.nanosaur.savedState",
  ]
end
