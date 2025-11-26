cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.77"
  sha256 arm:   "f77926e79ba3242b6291ceb149ee2ffcc647be678f036b156042cee76644c433",
         intel: "228a4d5bdb524412d1cefa29ff518d79c38920f14eada8427d1a7d8d3f048223"

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
