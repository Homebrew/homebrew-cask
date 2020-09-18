cask "jabt-flow" do
  version "1.9.0"
  sha256 "d65d524860b3aee28904f61bd9d831955dc0ade1f884716e62e4f02ff967bbf7"

  # Download page is at https://createwithflow.com/releases/
  # createwithflow-updates.s3-us-west-2.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://createwithflow-updates.s3-us-west-2.amazonaws.com/Flow#{version.no_dots}_.zip"
  appcast "https://createwithflow-updates.s3-us-west-2.amazonaws.com/appcast.xml"
  name "Flow"
  homepage "https://createwithflow.com/"

  auto_updates true

  app "Flow.app"
end
