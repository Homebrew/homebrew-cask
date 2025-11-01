cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.72"
  sha256 arm:   "63a8e6083f98393b4fc322f25cdbeaff3caa8ae2d6e9e39ca62e04e08a5625fc",
         intel: "24166561e472f36d8c997180e6af665cd03c15dfd87c9786c1226f08d8bb5c2e"

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
  depends_on macos: ">= :big_sur"

  app "Postman Agent.app"

  zap trash: [
    "~/Library/Application Support/PostmanAgent",
    "~/Library/Preferences/com.postmanlabs.agent.mac.plist",
  ]
end
