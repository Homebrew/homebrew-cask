cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.27"
  sha256 arm:   "e0ee7bde926511b24d5803d196f15a3e46751158135585c7bd549161fc66c6f9",
         intel: "8affe6d8765ebb8aef2908cc16bc6fab566c7ed07713837a1e92aee64f5a787a"

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
