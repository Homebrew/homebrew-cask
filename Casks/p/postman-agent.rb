cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.19"
  sha256 arm:   "a027f7d9cf1fc4241986e09a41d4698de218a83186fdfda329cf6d5e3c4424c2",
         intel: "541b5443069871ff75837bea97f6cbff372dc5898a6932910c99d1271f07eb80"

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
