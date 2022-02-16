cask "flowdock" do
  version "1.2.9,35"
  sha256 "803c42d393f91f2b8f08ad890f7603c9607d9adcac5acaf495e9ba66441657e7"

  url "https://flowdock-resources.s3.amazonaws.com/mac/#{version.csv.first}/Flowdock.zip",
      verified: "flowdock-resources.s3.amazonaws.com/"
  name "Flowdock"
  homepage "https://www.flowdock.com/"

  livecheck do
    url "https://flowdock-resources.s3.amazonaws.com/mac/appcast.xml"
    strategy :sparkle
  end

  app "Flowdock.app"
end
