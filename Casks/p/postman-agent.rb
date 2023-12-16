cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.18"
  sha256 :no_check

  url "https://dl-agent.pstmn.io/download/latest/#{arch}",
      verified: "dl-agent.pstmn.io/download/latest/"
  name "Postman Agent"
  desc "Desktop agent for Postman on the Web"
  homepage "https://www.postman.com/downloads/postman-agent/"

  livecheck do
    url :url
    strategy :header_match
  end

  auto_updates true

  app "Postman Agent.app"

  zap trash: [
    "~/Library/Application Support/PostmanAgent",
    "~/Library/Preferences/com.postmanlabs.agent.mac.plist",
  ]
end
