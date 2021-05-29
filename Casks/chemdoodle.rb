cask "chemdoodle" do
  version "11.5.0"
  sha256 "d65323044ef05028e333e847ea53c5c7e1e484d7e5fec8b67d9a2c47d2c99c98"

  url "https://www.ichemlabs.com/downloads/ChemDoodle-macos-#{version}.dmg"
  name "ChemDoodle"
  desc "2D chemical drawing, publishing and informatics"
  homepage "https://www.ichemlabs.com/"

  livecheck do
    url "https://www.ichemlabs.com/download#chemdoodle/osx-installation-instructions/"
    strategy :page_match
    regex(%r{href=.*?/ChemDoodle-macos-(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :yosemite"

  suite "ChemDoodle"
end
