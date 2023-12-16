cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.18"
  sha256 arm:   "e49789c5807c98fce85273a6a429f8d5c120e1a1c7f04e9689ead71a90741eb5",
         intel: "a0aabdd3115ac695400be9861d0bc537b477905f19655b6d7b4acc0afe10a2ad"

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
