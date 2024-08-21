cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.31"
  sha256 arm:   "1f03fab0e6ef23e1044e39e2bfe4245ad1a825226ccf6df216076ebe6d49c7f9",
         intel: "6e885ac2478affb21c821fc1df468986b922100afa772bcb1a6600d339541f2c"

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
