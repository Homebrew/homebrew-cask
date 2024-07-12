cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.28"
  sha256 arm:   "9a913ede4e27967bb2d5fb3feaa702f1a38f4a66143a0f2b51b71e74cafce450",
         intel: "d291d238b619ad1475c109fe9fb3a46c871eddaa273284e9d6cb52d9e1f4d35a"

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
