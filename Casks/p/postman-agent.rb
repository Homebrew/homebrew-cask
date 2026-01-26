cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.84"
  sha256 arm:   "07de666e26ad9cd58b092ee4820917714b59943a1459190654abbdf3c5ff3e43",
         intel: "0535e90381b263ca328b52e477cd458f7300850d220f780833fa6a1f7a711d62"

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
