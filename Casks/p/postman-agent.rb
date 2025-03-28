cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.38"
  sha256 arm:   "496cff727bbb3ffbd30439f06e8d7489dba6c1852829c6e9694d0b0f35a729ee",
         intel: "9edc3dacf341d49d006359e28085033b817608472d1070989a765f580cb202a8"

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
