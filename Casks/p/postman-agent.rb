cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.36"
  sha256 arm:   "de540adc05441998a6ea020825e6945a7648ec5b00faef9b23d71a8ef1dfefbf",
         intel: "746fcb9d56fe72aa2b23f99c320c7be5698990939ec656eb17762122c43e0840"

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
