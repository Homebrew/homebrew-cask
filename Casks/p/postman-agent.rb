cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.67"
  sha256 arm:   "51be7daae4092495e34ab51b2e04ea0332f2b17f3ddb366400c9fc8a440b116c",
         intel: "89ba779cc63d5c3564757e46d403e8a1ecbcc42c6da49a60c17b9e90c21b4768"

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
  depends_on macos: ">= :big_sur"

  app "Postman Agent.app"

  zap trash: [
    "~/Library/Application Support/PostmanAgent",
    "~/Library/Preferences/com.postmanlabs.agent.mac.plist",
  ]
end
