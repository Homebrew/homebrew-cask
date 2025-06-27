cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.49"
  sha256 arm:   "a70c7717a164a876424aa8d8ad8b58ce55cc0bef83879289c30d3307323ff304",
         intel: "8d5f00f705d2e43198a29414fd7289d50655da22941e2533c459702f5bf598ff"

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
