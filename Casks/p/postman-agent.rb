cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.74"
  sha256 arm:   "d5254fdf29173a458bf20708b15efd090afdc56c773a90f0e50c2ad1c4d27965",
         intel: "8b5dda8bc0b1b92e1492e5d2bb5b59a992c5e5ab25eae917338be9baae2a52ce"

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
