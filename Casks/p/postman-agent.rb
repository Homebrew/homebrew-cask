cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.22"
  sha256 arm:   "ab725fe74169626dbcb23870135a13626f39648a5a37bdd02228139ba81c7b60",
         intel: "10f6999867510d2d857982a0414ef98312d929a3a353d8e8d85083b5b1f07470"

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
