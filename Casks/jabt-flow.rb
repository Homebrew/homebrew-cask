cask "jabt-flow" do
  version "1.8.7"
  sha256 "ec92109656838cfc60620b4899d300ef0cf3754ac6fdb5eeae50947e45704522"

  # Download page is at https://createwithflow.com/releases/
  # createwithflow-updates.s3-us-west-2.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://createwithflow-updates.s3-us-west-2.amazonaws.com/Flow#{version.no_dots}_.zip"
  appcast "https://createwithflow-updates.s3-us-west-2.amazonaws.com/appcast.xml"
  name "Flow"
  homepage "https://createwithflow.com/"

  auto_updates true

  app "Flow.app"
end
