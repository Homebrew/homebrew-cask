cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.65"
  sha256 arm:   "e74d0b15ec541f2014adc722524b3c488dfd66bbdb337aeb7453aab8cf432f66",
         intel: "bf1c5c744f8635eb5a5ef62976535ca340af77ad618af764025b52191e9f4b3c"

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
