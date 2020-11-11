cask "jabt-flow" do
  version "1.9.2"
  sha256 "377082822eaf7f076421125dd392c23e228391cdfbaf02ce3744869bdbc1f228"

  # Download page is at https://createwithflow.com/releases/
  # createwithflow-updates.s3-us-west-2.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://createwithflow-updates.s3-us-west-2.amazonaws.com/Flow#{version.no_dots}_.zip"
  appcast "https://createwithflow-updates.s3-us-west-2.amazonaws.com/appcast.xml"
  name "Flow"
  homepage "https://createwithflow.com/"

  auto_updates true

  app "Flow.app"
end
