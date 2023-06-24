cask "sonic-robo-blast-2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "2.2.11"
  sha256 "e072a030cd9680058b73e02be87d44a643480a06224795e2eb8d3d6204809ea0"

  url "https://github.com/STJr/SRB2/releases/download/SRB2_release_#{version}/SRB2-#{version}-Darwin.dmg",
      verified: "github.com/STJr/SRB2/"
  name "Sonic Robo Blast 2"
  desc "3D open-source Sonic the Hedgehog fangame built using a Doom Legacy port of Doom"
  homepage "https://www.srb2.org/"

  livecheck do
    url "https://github.com/STJr/SRB2/releases"
    strategy :github_latest
  end

  app "Sonic Robo Blast 2.app"

  zap trash: "~/srb2"
end
