cask "flowdock" do
  version "1.2.9"
  sha256 "803c42d393f91f2b8f08ad890f7603c9607d9adcac5acaf495e9ba66441657e7"

  # flowdock-resources.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://flowdock-resources.s3.amazonaws.com/mac/#{version}/Flowdock.zip"
  appcast "https://flowdock-resources.s3.amazonaws.com/mac/appcast.xml"
  name "Flowdock"
  homepage "https://www.flowdock.com/"

  app "Flowdock.app"
end
