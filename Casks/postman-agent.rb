cask "postman-agent" do
  arch = Hardware::CPU.intel? ? "osx_64" : "osx_arm64"

  version "0.4.4"

  if Hardware::CPU.intel?
    sha256 "ac8d40ba2702f942c259993e29b3df2066327d545f0decdfaab46453f803e453"
  else
    sha256 "bd580cdc746c4fe76caae9268750bcb11bf033e63563f39183047a2b01d4a790"
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
