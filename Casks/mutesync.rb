cask "mutesync" do
  version "4.3.0"
  sha256 "d4b0b0e5510bd1326993b3c514c911cad502b839504ab683ce6240dcfa764cc4"

  url "https://mutesync.s3-us-west-2.amazonaws.com/mutesync-#{version}.dmg",
      verified: "mutesync.s3-us-west-2.amazonaws.com/"
  name "mütesync"
  desc "Companion app to the mütesync physical button"
  homepage "https://mutesync.com/"

  livecheck do
    url "https://mutesync.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "mutesync.app"
end
