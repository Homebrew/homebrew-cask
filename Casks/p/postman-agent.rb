cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.5.4"
  sha256 arm:   "e0d5b1037a995454c65ee604c537a169d7bffe841b29697df1a32ca211652fed",
         intel: "8983cc5fac3fed21dbc397fc8098e5051d4d38dc3eea9390d306583eef362775"

  url "https://dl-agent.pstmn.io/download/version/#{version}/#{arch}"
  name "Postman Agent"
  desc "Desktop agent for Postman on the Web"
  homepage "https://www.postman.com/downloads/postman-agent/"

  livecheck do
    url "https://dl-agent.pstmn.io/download/latest/#{arch}"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: :monterey

  app "Postman Agent.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.postmanlabs.agent.mac.sfl*",
    "~/Library/Application Support/PostmanAgent",
    "~/Library/Preferences/com.postmanlabs.agent.mac.plist",
  ]
end
