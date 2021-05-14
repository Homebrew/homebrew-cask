cask "runway" do
  version "0.17.7"
  sha256 "23ea39f6b4c5e6ce21cca2969db5e9154cfc922d49bee91a5ab117a723bfeaeb"

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
