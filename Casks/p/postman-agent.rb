cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.48"
  sha256 arm:   "c6d1c35434e30175e34c6ce1db6195a97b3436d1a2292d66efaa34b856d21433",
         intel: "91c74d5deff8100da18bed0302b67dfa745dc321c5f5f36894237870ed35355f"

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
