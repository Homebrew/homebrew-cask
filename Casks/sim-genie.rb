cask "sim-genie" do
  version "2021.1,255"
  sha256 "9673f39ec2ab8deb8dcf295e645a7343d5a24441f126ca7138a29b6a34d03d26"

  url "https://d1b3av25dd6jdq.cloudfront.net/releases/macos/SimGenie.#{version.csv.first}.#{version.csv.second}.zip",
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
