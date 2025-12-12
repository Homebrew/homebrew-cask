cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.80"
  sha256 arm:   "665e1b8e63ae1bd53c469a958cb588766f61ff0fa4707fb113bc68928bec09a3",
         intel: "87cbc56e4e7bac5d0c3395f44f80cb4fa980d8d30f868d2a0d409b3ff5082a77"

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
