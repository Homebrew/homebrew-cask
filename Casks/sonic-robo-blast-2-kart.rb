cask "sonic-robo-blast-2-kart" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "1.3"
  sha256 "0c598f0b8182391518d1d5777eb63b86465d7d36d3e3a6ab1db718f6b73c33c6"

  url "https://github.com/STJr/Kart-Public/releases/download/v#{version}/SRB2Kart-#{version}-macOS.dmg",
      verified: "github.com/STJr/Kart-Public/"
  name "Sonic Robo Blast 2 Kart"
  desc "Classic styled kart racer, complete with beautiful courses, and wacky items"
  homepage "https://mb.srb2.org/addons/srb2kart.2435/"

  livecheck do
    url "https://github.com/STJr/Kart-Public/releases/"
    regex(%r{v?(\d+(?:\.\d+)+)/SRB2Kart.*?macOS\.dmg}i)
    strategy :page_match
  end

  app "Sonic Robo Blast 2 Kart.app"

  zap trash: "~/srb2kart"
end
