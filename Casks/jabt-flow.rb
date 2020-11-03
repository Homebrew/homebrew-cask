cask "jabt-flow" do
  version "1.9.1"
  sha256 "8cac7ec36253df9a8d383112c50856c6032c0d7d877443676235fff3e5488c1f"

  # Download page is at https://createwithflow.com/releases/
  # createwithflow-updates.s3-us-west-2.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://createwithflow-updates.s3-us-west-2.amazonaws.com/Flow#{version.no_dots}_.zip"
  appcast "https://createwithflow-updates.s3-us-west-2.amazonaws.com/appcast.xml"
  name "Flow"
  homepage "https://createwithflow.com/"

  auto_updates true

  app "Flow.app"
end
