cask "chemdoodle" do
  version "11.1.0"
  sha256 "d78f58a872cc44a340e0d9ce460f62090fd473bb45024a0931782411060b972b"

  url "https://www.ichemlabs.com/downloads/ChemDoodle-macos-#{version}.dmg"
  appcast "https://www.ichemlabs.com/download#chemdoodle/osx-installation-instructions/"
  name "ChemDoodle"
  desc "2D chemical drawing, publishing and informatics"
  homepage "https://www.ichemlabs.com/"

  depends_on macos: ">= :yosemite"

  suite "ChemDoodle"
end
