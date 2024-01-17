cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.20"
  sha256 arm:   "21b4a2ec2609316c60e74cc3e1d37667639a9186c4eef410b7f7f85afca9e962",
         intel: "020ebea98772cf6cb801c749da5a22e56c9a2d0d7b3a91c4d99e7abd9b4eed61"

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
