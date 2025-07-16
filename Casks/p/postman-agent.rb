cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.53"
  sha256 arm:   "7dbde0867e27198bdab361bf85c0e1df89a744cbc93a1a14e019cc5578042100",
         intel: "dade28dc177b194803e43ab05c81e232ba793eef1355be6b45fcd967e8adf06a"

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
