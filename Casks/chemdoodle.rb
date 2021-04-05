cask "chemdoodle" do
  version "11.4.0"
  sha256 "153843a8149adfc171ba567052e03a4921e760e2300217501862a9b467d64567"

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
