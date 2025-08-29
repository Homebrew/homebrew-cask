cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.58"
  sha256 arm:   "a39fafe8d91dde67be368bc7edf3778c9c48803e7e7c8a3a8807f9b3ab972dc7",
         intel: "75e8863fa1a0c2700a2850acb3b24c54d477e750c5df88dfa90544075501cbe9"

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
