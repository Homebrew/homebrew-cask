cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.17"
  sha256 arm:   "65d82b6227de29a26f95164f02f53a23890694d5e112ea58d1369aa0955b6e21",
         intel: "bb4b0e2c913c8d69825ed3466909c848de034a61bd0ad20cba0c2f60cfe27757"

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
