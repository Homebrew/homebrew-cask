cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.63"
  sha256 arm:   "cf1d31e8842e947a578b3e7927b6a90ec6f205e71f49adeb97c65acd16d75a57",
         intel: "df8385692434b58de1713098dd42217d3ff80b88bf0f78e9f092d2fec8015699"

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
  depends_on macos: ">= :catalina"

  app "Postman Agent.app"

  zap trash: [
    "~/Library/Application Support/PostmanAgent",
    "~/Library/Preferences/com.postmanlabs.agent.mac.plist",
  ]
end
