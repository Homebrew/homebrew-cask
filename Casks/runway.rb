cask "runway" do
  version "0.17.6"
  sha256 "02596e42ca7db9481bb9d48fb0be22652329cc41b789b097778f430f8cf5f79a"

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
