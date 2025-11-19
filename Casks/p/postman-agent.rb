cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.76"
  sha256 arm:   "557755530ec99e434a226d93f1f893e59a3d9bbe17d70b7c8c8e36a86d01dd54",
         intel: "ce3e748ca4d604388257c9a4e0618682f95660bf368150e0d1aee0de584085d9"

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
