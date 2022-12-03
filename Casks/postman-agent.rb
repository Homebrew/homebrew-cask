cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.8"
  sha256 arm:   "58c44954a7e0ee1db4aa8731cf9487c92615a537f930310708ed68ba804cd575",
         intel: "200c0eb4673e09118ea7cfe5bb058a041f416107655ffdf7e80461bd7fb939b1"

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
