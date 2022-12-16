cask "chemdoodle" do
  arch arm: "aarch64", intel: "x64"

  version "11.12.0"
  sha256 arm:   "e04115f90e3f6d6cdf2ba4e73134ee9f780a9d0f9be46f940ff3ce92a23e5f46",
         intel: "75803a20ea2c7dbd338dc82dbf452444ed3ba1fb641cb795370d86a73435f43b"

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
