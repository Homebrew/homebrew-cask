cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.51"
  sha256 arm:   "2ef48cecc44b522a6a9e6e58742e04cfa8dc61c5576c6ff2fcfe87b0497215fa",
         intel: "dcce82ef769d516bcb658717d19a0f28faaaf97fd417e7637dff3cfec8f477a0"

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
