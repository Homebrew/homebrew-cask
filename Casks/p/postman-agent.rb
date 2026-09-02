cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.90"
  sha256 arm:   "be3f0b78ce4f88dd9c7343ff8be011f5be94a34d1486a063f5234b0c8e3c56c7",
         intel: "1218522088108f5957c4bfbb820ebfcc452059884454af82da6892327af0ab1b"

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
