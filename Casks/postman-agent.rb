cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.14"
  sha256 arm:   "b812c9d4ec7258f959ae0f17d41dd6364df0113583a47c60ecb23edb3c681f4f",
         intel: "95a79cf5060c52ddcdb744f6fcf84988607c433eedc70ff018643d493a003d3a"

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
