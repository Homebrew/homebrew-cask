cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.47"
  sha256 arm:   "e11ec64d33118aeb6b6d15a218963b12c8c2fd5bdd2fe531ca07a81bec25c27e",
         intel: "cbaf69fac626f2f2e2f373a165bdda39ac79a774160abcaf5aeda0a294d75ecd"

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
