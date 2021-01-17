cask "chemdoodle" do
  version "11.2.0"
  sha256 "05c9a49d054f08362a09155866c4026fe2587af1db0290682beb15654e4eeb24"

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
