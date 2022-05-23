cask "postman-agent" do
  arch = Hardware::CPU.intel? ? "osx_64" : "osx_arm64"

  version "0.4.5"

  if Hardware::CPU.intel?
    sha256 "65ee3da81f8052747e84782c5f7aec1920682e4e78c30df9b5a6f75036420cff"
  else
    sha256 "cebc7cfceaaa5e679c328588ddf38fe735c1e19fd27d8dc2624ad906f7183a34"
  end

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
