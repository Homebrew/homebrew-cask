cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.66"
  sha256 arm:   "7b544e6828c3b7f14500f74962e44e2393c3280e4000f3d744bbb49475335182",
         intel: "e5abda40b102f4f060639aa4885acba225bee0ca5673b306de9ce32b5dba8290"

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
