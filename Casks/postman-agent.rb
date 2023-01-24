cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.10"
  sha256 arm:   "0822e7c2c463baa805352d3cf756c32696c8e86cde9845ebf3f134eba693a71a",
         intel: "bc107bf72d7abb04cb308d94f6ff6026ec3465be162473f1e2ef70d2a84b9dbb"

  url "https://dl-agent.pstmn.io/download/version/#{version}/#{arch}",
      verified: "dl-agent.pstmn.io/download/version/"
  name "Postman Agent"
  desc "Desktop agent for Postman on the Web"
  homepage "https://www.postman.com/downloads/postman-agent/"

  livecheck do
    url "https://dl-agent.pstmn.io/download/latest/#{arch}"
    strategy :header_match
  end

  auto_updates true

  app "Postman Agent.app"

  zap trash: [
    "~/Library/Application Support/PostmanAgent",
    "~/Library/Preferences/com.postmanlabs.agent.mac.plist",
  ]
end
