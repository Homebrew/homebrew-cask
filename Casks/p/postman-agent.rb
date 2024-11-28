cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.33"
  sha256 arm:   "868d3f6019ca00b38e5355d494c09fb608fa5603475d6f50ae040f38e7045a58",
         intel: "0b4362d43f078936201e96fbaf8a7e30c67f3df8b30a6a9fb898afca06b93090"

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
