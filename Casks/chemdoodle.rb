cask "chemdoodle" do
  version "11.10.0"
  sha256 "ddf5b0f29a5b1cdc5e71c1a4858108fab4497019f7c7b21282795a959bfcc139"

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
