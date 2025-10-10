cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.68"
  sha256 arm:   "db010b5c6787358a21136306ba23ed880db83753ba3dbea941e84d6588da6735",
         intel: "640e720aa311c2718374d3af918cf3939344a3d2b2c57104ebc196cb2a53a8bb"

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
