cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.35"
  sha256 arm:   "9fbc1dd68fa8a58ab9f744552d98bfa6445ac8ef4793bbe2503cd5f0647acedc",
         intel: "17ac8a91f2cde9d3722bb1a621712b3a67315f48a429a9ff35d89300cfe3cb3a"

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
