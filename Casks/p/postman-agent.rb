cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.55"
  sha256 arm:   "5059b6fc0800f736e8a441e8c668e61ff807ff7c388e7e3ba7d820689dce7b43",
         intel: "06fe360217c4108e78389844cb774b63e85adfc0118d4b3055488776a5789d36"

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
