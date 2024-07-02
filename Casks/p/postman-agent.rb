cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.26"
  sha256 arm:   "62b1c702e61a8038cc0c0209d53d1e68b7537b9a47c8fc25bbcf57efc739f9e1",
         intel: "c30be4868db8b784d402dcaf52431f48796154938d41c8dfbbd5e8301a6f50a6"

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
