cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.21"
  sha256 arm:   "b038e704cdf2a16377fe678fcabc6be99293d1768a2c12aa9deb9b8f8f4d8b86",
         intel: "7e0671680b6e13e9209d6fdc20d10e3ddd4d3c7a7b8fc7fbeedae8a2756059f2"

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
