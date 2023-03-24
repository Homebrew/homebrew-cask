cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.13"
  sha256 arm:   "81735aae69987b0296974a78633ec8a8b5d925846985617994890115ecca63dd",
         intel: "0f89e447b87d620fa4c61af63b993e38936cfe0a3e14b3825162d22ca2fd5fb7"

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
