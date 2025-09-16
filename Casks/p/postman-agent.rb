cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.64"
  sha256 arm:   "7d52ae03c489373cbdaa7ba1e3bb0f5fdaf87e6f43492ad2037acacce312bbac",
         intel: "47adbe9724e7ad41e8999115a48745efb1d7ad59dc36f7418a88ad95f36892e4"

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
