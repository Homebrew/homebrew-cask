cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.56"
  sha256 arm:   "066e752b8d7b794a340530b76be9218e91611a98d708e9245f8a21c2e519a3e7",
         intel: "a4296d92ef092fa6d1500ba25caf7e2a90bea54e2562ad012cedc6388e3d63a4"

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
