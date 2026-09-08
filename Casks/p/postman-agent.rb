cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.5.1"
  sha256 arm:   "b6ab6579572f00c9f5d52f4a28fa13715b1ce9171b88d6f0c5a34ef3349f41dd",
         intel: "de63fb88de47d0866512f2cb5ff4ab85d7417686bf3c3e472b21906c166e0cc0"

  url "https://dl-agent.pstmn.io/download/version/#{version}/#{arch}"
  name "Postman Agent"
  desc "Desktop agent for Postman on the Web"
  homepage "https://www.postman.com/downloads/postman-agent/"

  livecheck do
    url "https://dl-agent.pstmn.io/download/latest/#{arch}"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Postman Agent.app"

  zap trash: [
    "~/Library/Application Support/PostmanAgent",
    "~/Library/Preferences/com.postmanlabs.agent.mac.plist",
  ]
end
