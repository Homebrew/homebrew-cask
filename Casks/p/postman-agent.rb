cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.37"
  sha256 arm:   "c08682b6eb61ab1d1bc9db18c040afeee1624246c38ec36aa7ed9a087ac2030a",
         intel: "072dd21c60cd6fe2cfaba2c5cc60d06d23c7a2a3f757693719f830a3cd26cc36"

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
