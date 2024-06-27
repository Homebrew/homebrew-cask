cask "openmsx" do
  version "19_1"
  sha256 "e81a31cd19b1fdf029b08b55879fef6793cb0bbcbdc79e6e4cc8892f64d82d8b"

  url "https://github.com/openMSX/openMSX/releases/download/RELEASE_#{version}/openmsx-#{version.underscores_to_dots}-mac-x86_64-bin.dmg",
      verified: "github.com/openMSX/openMSX/"
  name "openMSX"
  desc "MSX emulator"
  homepage "https://openmsx.org/"

  app "openMSX.app"

  caveats do
    requires_rosetta
  end
end
