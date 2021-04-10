cask "runway" do
  version "0.17.0"
  sha256 "0f48d55b5fa184d9513fe7dbaddb4747c1dad2c810e295e6d6dd7aa7467279b1"

  url "https://runway-releases.s3.amazonaws.com/Runway-#{version}.dmg",
      verified: "runway-releases.s3.amazonaws.com/"
  name "Runway"
  homepage "https://runwayml.com/"

  livecheck do
    url "https://runway-releases.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "Runway.app"
end
