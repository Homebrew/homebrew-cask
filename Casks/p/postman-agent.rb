cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.5.2"
  sha256 arm:   "d8629f3dfdd6973992610238508858b1f744d9fbd57c5c30ab35dd85a89a9da1",
         intel: "55e383755e2a009b78b8a02f064c17dcb77c323f3b2f2f2a85e15d6cade2ec5e"

  url "https://dl-agent.pstmn.io/download/version/#{version}/#{arch}"
  name "Postman Agent"
  desc "Desktop agent for Postman on the Web"
  homepage "https://www.postman.com/downloads/postman-agent/"

  livecheck do
    url "https://dl-agent.pstmn.io/download/latest/#{arch}"
    strategy :header_match
  end

  auto_updates true
  depends_on :macos

  app "Postman Agent.app"

  zap trash: [
    "~/Library/Application Support/PostmanAgent",
    "~/Library/Preferences/com.postmanlabs.agent.mac.plist",
  ]
end
