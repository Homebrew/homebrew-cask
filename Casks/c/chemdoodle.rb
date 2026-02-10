cask "chemdoodle" do
  arch arm: "aarch64", intel: "x64"

  version "12.10.0"
  sha256 arm:   "fa8a5d0b22fc8586439e8923c5b7bed7620097aef066532e81d24a53d296a9ea",
         intel: "d127281fda4c3db9d03d9d92e5f8748afbed8407564a4fd8b75c5a396f8b3e98"

  url "https://www.ichemlabs.com/downloads/ChemDoodle-macos-#{arch}-#{version}.dmg"
  name "ChemDoodle"
  name "ChemDoodle 2D"
  desc "2D chemical drawing, publishing and informatics"
  homepage "https://www.ichemlabs.com/"

  livecheck do
    url "https://www.ichemlabs.com/download#chemdoodle/osx-installation-instructions/"
    regex(%r{href=.*?/ChemDoodle[._-]macos[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  suite "ChemDoodle"

  zap trash: "~/Library/Saved Application State/com.iChemLabs.ChemDoodle.savedState"
end
