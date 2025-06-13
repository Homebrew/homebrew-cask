cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.46"
  sha256 arm:   "8e6628ca862ee1b56e9c390f8c2184b62a71ff6adb3377172d59536b67efefff",
         intel: "af6dd802af1532964781cf5a81e58d878ac540666dc579171bdc7f5f58f8c151"

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
