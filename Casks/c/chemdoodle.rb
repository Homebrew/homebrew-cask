cask "chemdoodle" do
  arch arm: "aarch64", intel: "x64"

  version "12.11.0"
  sha256 arm:   "da5a6ed503dc4510bb50ec1b0a008451b774f45181a8156f913fcbe5fb7c1a0b",
         intel: "adcab09d80f2c28b14f6cae361cfcd6460f2e50df8dc190c5e80da42e08b7e0a"

  url "https://www.ichemlabs.com/downloads/ChemDoodle-macos-#{arch}-#{version}.dmg"
  name "ChemDoodle"
  name "ChemDoodle 2D"
  desc "2D chemical drawing, publishing and informatics"
  homepage "https://www.ichemlabs.com/"

  livecheck do
    url "https://www.ichemlabs.com/download#chemdoodle/osx-installation-instructions/"
    regex(%r{href=.*?/ChemDoodle[._-]macos[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on :macos

  suite "ChemDoodle"

  zap trash: "~/Library/Saved Application State/com.iChemLabs.ChemDoodle.savedState"
end
