cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.44"
  sha256 arm:   "b13631f0d71e31a0abc2da3d2cba879eb88b8793a4bd51b3c6269e8e4b0c959c",
         intel: "4c54be0ac4b9c6562f3ba383c2c20d62e8089b03e312f2e948dec8306c287237"

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
