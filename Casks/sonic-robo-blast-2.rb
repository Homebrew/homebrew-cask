cask "sonic-robo-blast-2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "2.2.10"
  sha256 "30bf6a96707c9c824b5fb8a4b2ca43431b2109ae1cb80e9adcbbdf0ef531e5c6"

  url "https://github.com/STJr/SRB2/releases/download/SRB2_release_#{version}/SRB2-#{version}-macOS-Installer.dmg",
      verified: "github.com/STJr/SRB2/"
  name "Sonic Robo Blast 2"
  desc "3D open-source Sonic the Hedgehog fangame built using a Doom Legacy port of Doom"
  homepage "https://www.srb2.org/"

  livecheck do
    url "https://www.srb2.org/download/"
    strategy :page_match
    regex(%r{href=.*?/SRB2-(\d+(?:\.\d+)*)-macOS-Installer.dmg}i)
  end

  app "Sonic Robo Blast 2.app"

  zap trash: "~/srb2"
end
