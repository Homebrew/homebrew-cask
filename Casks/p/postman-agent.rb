cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.23"
  sha256 arm:   "ce41c2d738ed15f2cc3574471485364e4ca3b0599d51c356567662f8093e1c93",
         intel: "c6945575e7ff0c7d0aa01db1d559c408eb1e476ca2aa900238b83508fc26a946"

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
