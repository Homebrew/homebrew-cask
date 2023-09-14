cask "chemdoodle" do
  arch arm: "aarch64", intel: "x64"

  version "12.2.1"
  sha256 arm:   "f9273efa39dc6fe6eb501fc95b7efd99817ed6cbae7ca34641a0a903d3d3a553",
         intel: "0091d416de58edd69bfab69096f62d780b73e70e45bf9723e95fdd6349e6e70a"

  url "https://www.ichemlabs.com/downloads/ChemDoodle-macos-#{arch}-#{version}.dmg"
  name "ChemDoodle"
  name "ChemDoodle 2D"
  desc "2D chemical drawing, publishing and informatics"
  homepage "https://www.ichemlabs.com/"

  livecheck do
    url "https://www.ichemlabs.com/download#chemdoodle/osx-installation-instructions/"
    regex(%r{href=.*?/ChemDoodle[._-]macos[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :el_capitan"

  suite "ChemDoodle"

  zap trash: "~/Library/Saved Application State/com.iChemLabs.ChemDoodle.savedState"
end
