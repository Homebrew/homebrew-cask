cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.24"
  sha256 arm:   "8bcb269c709bd17be24ca40fa611fe9bc6e49dc52deeed32a392d77e0f03f488",
         intel: "91a7b4688f5877e7a3a532fa126383012e6bd8f4a5ca1f04623028b863d76556"

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
