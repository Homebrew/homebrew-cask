cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.81"
  sha256 arm:   "fd5b40b91a84f13eaeacfe925bfdbba30410257768962dd574acbc6f78c13f02",
         intel: "4e80d1dedfa0dd6a37f1690e92ce419e8b3ebcb46aaa1776cedb197b50a2c072"

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
