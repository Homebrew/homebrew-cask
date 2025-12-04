cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.78"
  sha256 arm:   "88db36913f76ee02385b400570f1f0b411da5127c744500ab2d2aea0e0a61041",
         intel: "6bafcc8e7b3c87b13cb117f617c42f918d7dc2dfd7589d9f8feeaf2aa1ac165a"

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
