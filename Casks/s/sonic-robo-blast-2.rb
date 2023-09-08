cask "sonic-robo-blast-2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "2.2.12"
  sha256 "ebe271488e80514c4a3fe1bd7c69e57548ff948c271bf77fcfc0bb893d84d6b0"

  url "https://github.com/STJr/SRB2/releases/download/SRB2_release_#{version}/SRB2-#{version}-macOS-Installer.dmg",
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
