cask "inky" do
  version "0.12.0"
  sha256 "3d7901d9dbe3d3ccca1a585321ec65d5aa5a298532c0d667a5285940035d38f8"

  url "https://github.com/inkle/inky/releases/download/#{version}/Inky_mac.dmg",
      verified: "github.com/inkle/inky/"
  appcast "https://github.com/inkle/inky/releases.atom"
  name "Inky"
  desc "Editor for ink: inkle's narrative scripting language"
  homepage "https://www.inklestudios.com/ink/"

  app "Inky.app"
end
