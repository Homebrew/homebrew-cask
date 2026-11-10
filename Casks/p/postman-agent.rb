cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.5.3"
  sha256 arm:   "e10faa747b3c084600f1fe6ee76996c4f8cc04ed924202e332c9639c62676b0f",
         intel: "b6cbbc5eb577e8c5fb6eabcf61e8adbb192541cc0df64d88a1579fccbc3ddfe7"

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
