cask "sim-genie" do
  version "2020.5,244"
  sha256 "26b58364da96d8e912b7c2cb14a5ebf25f721686bde014984501a632e3fc5fd9"

  url "https://d1b3av25dd6jdq.cloudfront.net/releases/macos/SimGenie.#{version.before_comma}.#{version.after_comma}.zip",
      verified: "d1b3av25dd6jdq.cloudfront.net/"
  name "Sim Genie"
  homepage "https://simgenie.app/"

  livecheck do
    url "https://simgenie.app/releases/macos/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "Sim Genie.app"
end
