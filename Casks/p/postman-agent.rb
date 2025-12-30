cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.82"
  sha256 arm:   "f5614546772cbe896c4a077876ffae5e501b981a4544e22b819d5a466203520e",
         intel: "63a18699ba2793480873e481d9dd24cc6206ff9f8de75b910f7bef8fc84d2320"

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
