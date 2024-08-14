cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.30"
  sha256 arm:   "1b90f6f8a87108d538ed0df9b2d8e1c0c69e96c7a551266833f44b9bdab7b355",
         intel: "9be85a0e6411478e5636fdeedf2b515db5d6d99ff4e588600174376bb296d7a2"

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
