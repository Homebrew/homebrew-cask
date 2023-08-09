cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.15"
  sha256 arm:   "cd09cb5487ff299da82f326909dea4321996c1869f2e57e71671e8263ce512e0",
         intel: "14ef5f9352df1e06f67761cbe1c4e68459866311f3bcfae397d33298ddff669e"

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
