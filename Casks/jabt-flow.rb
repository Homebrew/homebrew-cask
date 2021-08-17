cask "jabt-flow" do
  version "1.11.1,109"
  sha256 "a360b2274937dfda53dc020f6847c07ce8d818a0b6c479237ca87c398d3f0ef1"

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
