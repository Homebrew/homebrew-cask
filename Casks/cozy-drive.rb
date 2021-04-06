cask "cozy-drive" do
  version "3.26.1"
  sha256 "ea2ea9facfc1716f1556c88e6b856db3250d288ec2da8e9d42c6c593a948523c"

  url "https://nuts.cozycloud.cc/download/channel/stable/CozyDrive-#{version}.dmg",
      verified: "nuts.cozycloud.cc/"
  name "Cozy Drive"
  homepage "https://cozy.io/"

  livecheck do
    url "https://nuts.cozycloud.cc/download/channel/stable/osx"
    strategy :header_match
  end

  app "Cozy Drive.app"
end
