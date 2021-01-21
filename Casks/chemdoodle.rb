cask "chemdoodle" do
  version "11.3.0"
  sha256 "fa660e0a1f5e77f3f623aefc288861cc76aa62f1a91da5cb7438b60de4e3d139"

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
