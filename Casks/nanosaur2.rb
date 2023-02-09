cask "nanosaur2" do
  version "2.1.0"
  sha256 "c2f81e0ac2b73f845d92a13d19b7fc6b83da8761d6453c2b8a34e2e2cfe1674b"

  url "https://github.com/jorio/Nanosaur2/releases/download/v#{version}/Nanosaur2-#{version}-mac.dmg",
      verified: "github.com/jorio/Nanosaur2/"
  name "Nanosaur II: Hatchling"
  desc "Dinosaur 3rd person shooter game sequel from Pangea Software"
  homepage "https://jorio.itch.io/nanosaur2"

  app "Nanosaur 2.app"
  artifact "Documentation", target: "#{Dir.home}/Library/Application Support/Nanosaur2"

  zap trash: [
    "~/Library/Preferences/Nanosaur2",
    "~/Library/Saved Application State/io.jor.nanosaur2.savedState",
  ]
end
