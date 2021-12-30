cask "sonic-robo-blast-2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "2.2.9"
  sha256 "a739cd8018720fb5fa15361ca1f3f230fc59201235d4dcb061403d3a7e5df1ad"

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
