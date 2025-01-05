cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.34"
  sha256 arm:   "f28bec26e87af0e279177ba2250f173a8b557b5a13fec083fc2bf07a9005e7c0",
         intel: "83f5f379063f1657251780c84b5d3cbbea0170ca1b21c1ffd3130fe1161c06cf"

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
