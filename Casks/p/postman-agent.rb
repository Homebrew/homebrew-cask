cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.16"
  sha256 arm:   "aa9f86d50ece2883dc38e17d4ae99a12c764979aa3bd0377c147e162daa5491f",
         intel: "4db569dc68d2e1ce5ec8a267ef5fc1e338a6ecf876d06e628169844a673822b5"

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
