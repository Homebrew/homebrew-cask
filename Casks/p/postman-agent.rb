cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.57"
  sha256 arm:   "3c5ce47d13096d00dabc45d63c4cf5c7d0b447d7649e5871637e32e83d7f6fa3",
         intel: "e442fc5e643d2f99f384c286aeab297a441458bad0a11f2a89ed67caee5dfeef"

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
