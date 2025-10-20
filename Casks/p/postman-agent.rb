cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.69"
  sha256 arm:   "acd2d0e477a50483c7739c11ec1f3c0e6b54555e914f9e971ab3322dd196cb8b",
         intel: "a5cb35ad5eff6fe48e51578af1b0f1e66bfed23c527955262adb0a7fdc0c57af"

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
