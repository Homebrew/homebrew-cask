cask "chemdoodle" do
  version "11.6.0"
  sha256 "c00c91c09af5d909b4856038f549eb424eb5044761353d77cca1bb9bd05c62fc"

  url "https://www.ichemlabs.com/downloads/ChemDoodle-macos-#{version}.dmg"
  name "ChemDoodle"
  name "ChemDoodle 2D"
  desc "2D chemical drawing, publishing and informatics"
  homepage "https://www.ichemlabs.com/"

  livecheck do
    url "https://www.ichemlabs.com/download#chemdoodle/osx-installation-instructions/"
    regex(%r{href=.*?/ChemDoodle[._-]macos[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :el_capitan"

  suite "ChemDoodle"
end
