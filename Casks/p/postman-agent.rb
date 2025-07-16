cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.54"
  sha256 arm:   "eb91f571e61d81d82f73e1b8928d6a2c5266562e2f4fc8501762b61d0474d231",
         intel: "7883bf04b377861eda54c746615599f0fb26ea2e9b9925de09d17fcfcdebe232"

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
