cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.25"
  sha256 arm:   "6bac307f3741541d708f62ddf6549a5aabd57413e62d782b357b6fd51e7ce395",
         intel: "29798fcc39ea1d6258359ff5940af82a688ff8b3c4b25acd958e2ffbea72a045"

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
