cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.41"
  sha256 arm:   "fa202ea35e82f5ba9cb7d7442a37c397df38bb0d2a2296d28937544f2c38ae2c",
         intel: "c337e40fa65077af8d206ae6f975276c2b2674656ba09280e3303c95163e5589"

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
