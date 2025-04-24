cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.42"
  sha256 arm:   "ec329a251ad9606bc825d32c99974419f2343cb36fe62912e5d20310b3b2273f",
         intel: "941d3434d245b04fe251dbcefd6dcadfa41b495ce6ffb2b2cfdf8ff10eee03e4"

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
