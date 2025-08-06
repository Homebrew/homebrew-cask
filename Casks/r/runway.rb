cask "runway" do
  version "0.19.2"
  sha256 "25ef6c07a8c0c3832a35d414cfc11ee12f45a8f7c159dcc45129e1514041c474"

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

  zap trash: [
    "~/.runway",
    "~/Library/Application Support/Runway",
    "~/Library/Logs/Runway",
    "~/Library/Preferences/com.runwayai.runway.plist",
    "~/Library/Saved Application State/com.runwayai.runway.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
