cask "runway" do
  version "0.19.0"
  sha256 "c39c7ae1b45b08e02c18b6fc87775466833d6974c5ec7a606724834578cff893"

  url "https://runway-releases.s3.amazonaws.com/Runway-#{version}.dmg",
      verified: "runway-releases.s3.amazonaws.com/"
  name "Runway"
  desc "Creative toolkit powered by machine learning"
  homepage "https://runwayml.com/"

  livecheck do
    url "https://runway-releases.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "Runway.app"
end
