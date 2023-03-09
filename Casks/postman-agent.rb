cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.12"
  sha256 arm:   "dd86bda9fca7fe165c1fb901e1ac9ea8d3e794699e10be54ac916fe0ae58428f",
         intel: "709b3ebae19beb67e461c88861ad0e38474c95085727fad802fc42ba930871d2"

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

  app "Postman Agent.app"

  zap trash: [
    "~/Library/Application Support/PostmanAgent",
    "~/Library/Preferences/com.postmanlabs.agent.mac.plist",
  ]
end
