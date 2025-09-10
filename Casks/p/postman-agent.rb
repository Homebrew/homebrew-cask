cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.62"
  sha256 arm:   "01a8fde8bff18cf7847196d77427364d2de4a9cf342e1ef210d75d38fe32418a",
         intel: "0a8d4d275bbfa97c7d6952628776a1fca135d9a43f7a71dc677daba713ca2997"

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
