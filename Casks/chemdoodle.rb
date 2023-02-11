cask "chemdoodle" do
  arch arm: "aarch64", intel: "x64"

  version "11.13.0"
  sha256 arm:   "0ca984a31ae01e520a9b50d194537f533caa081acec616b12a6631e153573141",
         intel: "de82266213c6732eb9d3422595e0cf8224521b441dadd900179766100a40f01e"

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
end
