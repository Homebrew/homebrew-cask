cask "sonic-robo-blast-2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "2.2.13"
  sha256 "06e1d7f9e47cb095b950daaedf2a232e4275c0c2a8894d0ac1110242289efeb4"

  url "https://github.com/STJr/SRB2/releases/download/SRB2_release_#{version}/SRB2-#{version}-macOS-Installer.dmg",
      verified: "github.com/STJr/SRB2/"
  name "Sonic Robo Blast 2"
  desc "3D open-source Sonic the Hedgehog fangame built using a Doom Legacy port of Doom"
  homepage "https://www.srb2.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Sonic Robo Blast 2.app"

  zap trash: "~/srb2"
end
