cask "cozy-drive" do
  version "3.26.0"
  sha256 "171be370b221c422a29875ff8804bba98635f666c649fa96dfc165e06605f61e"

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
