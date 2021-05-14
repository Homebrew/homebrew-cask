cask "jabt-flow" do
  version "1.10.2,107"
  sha256 "3380205a886018587e0c6fc559857eab2a0f345ec2a89d6226ce9d12ab4f476e"

  # Download page is at https://createwithflow.com/releases/
  url "https://createwithflow-updates.s3-us-west-2.amazonaws.com/Flow#{version.before_comma.no_dots}_.zip",
      verified: "createwithflow-updates.s3-us-west-2.amazonaws.com/"
  name "Flow"
  homepage "https://createwithflow.com/"

  livecheck do
    url "https://createwithflow-updates.s3-us-west-2.amazonaws.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Flow.app"
end
