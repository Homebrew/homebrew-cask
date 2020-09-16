cask "jabt-flow" do
  version "1.8.8"
  sha256 "dc0103e515989890d5147c16314a384fab689d8a622c1d88d200ad94fe54b2c4"

  # Download page is at https://createwithflow.com/releases/
  # createwithflow-updates.s3-us-west-2.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://createwithflow-updates.s3-us-west-2.amazonaws.com/Flow#{version.no_dots}_.zip"
  appcast "https://createwithflow-updates.s3-us-west-2.amazonaws.com/appcast.xml"
  name "Flow"
  homepage "https://createwithflow.com/"

  auto_updates true

  app "Flow.app"
end
