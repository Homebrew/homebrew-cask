cask "runway" do
  version "0.17.10"
  sha256 "78bcccde07ac41618ea5330ee3cbbe905bee3bebfaa6dad2a5dff794996701c8"

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
