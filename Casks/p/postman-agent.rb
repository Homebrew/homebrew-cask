cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.75"
  sha256 arm:   "876e0eada443a1518cca3c1bd5762d64c375d75502fde56019d1278ba392f967",
         intel: "5444c6806b6cf770db953ed7e304055c0fa5f6468a2bbcc41172c8a249062f02"

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
