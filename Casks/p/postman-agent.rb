cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.32"
  sha256 arm:   "ca5017bd2884a71d5137c5b8349d04734270f89da37d836d2ff46c8b4950739c",
         intel: "48016a671cb3a78d2f4b8d0a716439c8177798915b9b2debebe3d98c15692dd6"

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
