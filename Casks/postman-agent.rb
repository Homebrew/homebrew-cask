cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.11"
  sha256 arm:   "8b04631d9f0b39d6542c571827b1e70beb5e5a88f1d3e232986c2b564415461e",
         intel: "3d5bbb2d3c4bb3b0c6b22b3a848ea677e1afc5c17ab9a34067196987fe7ca14d"

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
