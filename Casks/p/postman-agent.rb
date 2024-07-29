cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.29"
  sha256 arm:   "0085e4f024169ad047f37cd3377d691a07ada7642ce3909b714bffec11c17dd6",
         intel: "8a3723e6a37b6c4a6b62ab01f60758fc996f36b8847b66650a86e7188d0a0ec4"

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
