cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.45"
  sha256 arm:   "0f435a6a37995d8f556b0182a5800b628eb542c0f53f5358745fb007ad25dae4",
         intel: "98759645040b10b77153140d2a6c3591ac3a7bdb2f92c6e1f3538b6e1db1825a"

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
