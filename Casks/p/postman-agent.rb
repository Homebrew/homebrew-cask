cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.60"
  sha256 arm:   "425391d9e5a96dfb8c7d978f47c2a49a48ff3d57aceb320e6b22491ecc6d9f66",
         intel: "7446600150e2bee5ce98d1e5670afe6a311b1ce64253f21e93075fd7b3d4d5fe"

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
