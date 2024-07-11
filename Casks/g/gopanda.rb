cask "gopanda" do
  version "2.8.0"
  sha256 :no_check

  url "https://pandanet-igs.com/gopanda#{version.major}/download/GoPanda#{version.major}.dmg"
  name "GoPanda"
  desc "Pandanet client"
  homepage "https://pandanet-igs.com/communities/gopanda2"

  livecheck do
    url "https://pandanet-igs.com/gopanda#{version.major}/download/latest-mac.yml"
    strategy :electron_builder
  end

  app "GoPanda#{version.major}.app"

  caveats do
    requires_rosetta
  end
end
