cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.59"
  sha256 arm:   "73de944e89938753971d158f83c485033195f4f9821a2974f2fdd6b9760d83ff",
         intel: "5b485fb150529f46359af6b56fd75671add0e04c36312d2f18a14a6dddc85af6"

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
