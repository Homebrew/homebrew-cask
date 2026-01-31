cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.85"
  sha256 arm:   "f9b27301d6986406ced4c3188990281760c63e1a8456e20725299a4b399d1d74",
         intel: "61f09ed3808c595b221ddbcf5946c94d6280e31c4d7873d541b5f5329c89479a"

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
