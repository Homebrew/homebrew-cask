cask "jabt-flow" do
  version "1.10.1,106"
  sha256 "0afe6999fb7b931d3dce6fd07fefb379727b41e713530ade42e9fea2398afbfe"

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
