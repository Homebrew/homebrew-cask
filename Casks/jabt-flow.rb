cask "jabt-flow" do
  version "1.10.0"
  sha256 "b1b990aefc8528e17d112a0f00e1c5625b04f6a068020973f850f907e36ba9e5"

  # Download page is at https://createwithflow.com/releases/
  url "https://createwithflow-updates.s3-us-west-2.amazonaws.com/Flow#{version.no_dots}_.zip",
      verified: "createwithflow-updates.s3-us-west-2.amazonaws.com/"
  appcast "https://createwithflow-updates.s3-us-west-2.amazonaws.com/appcast.xml"
  name "Flow"
  homepage "https://createwithflow.com/"

  auto_updates true

  app "Flow.app"
end
