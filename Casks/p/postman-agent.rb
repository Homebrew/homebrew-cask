cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.83"
  sha256 arm:   "b3543a58f540bb7bfdc31245584dd24b18b5d2808a9ce821f67df5d2525afac7",
         intel: "578e890a16c035ff3c4f0685c2636844321454827e40f26bd6b7c2af408d714e"

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
