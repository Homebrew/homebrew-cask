cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.52"
  sha256 arm:   "6c529bc3fa0b2cca8f6f3597a32c36e45f4f6808fb64241fad0b9e8299372d84",
         intel: "0a4c9cf35c56a317aebb2dca3422004c9de17c689b0e547952b602959413efee"

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
