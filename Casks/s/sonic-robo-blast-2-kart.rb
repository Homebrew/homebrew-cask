cask "sonic-robo-blast-2-kart" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "1.6"
  sha256 "d433b8b8662068b7726f31bfd6b372bd9a991019d7c88be6ffc9db380cf3ba9d"

  url "https://github.com/STJr/Kart-Public/releases/download/v#{version}/SRB2Kart-#{version}-macOS.dmg",
      verified: "github.com/STJr/Kart-Public/"
  name "Sonic Robo Blast 2 Kart"
  desc "Classic styled kart racer, complete with beautiful courses, and wacky items"
  homepage "https://mb.srb2.org/addons/srb2kart.2435/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Sonic Robo Blast 2 Kart.app"

  zap trash: "~/srb2kart"
end
