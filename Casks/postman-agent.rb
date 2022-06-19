cask "postman-agent" do
  arch = Hardware::CPU.intel? ? "osx_64" : "osx_arm64"

  version "0.4.6"

  if Hardware::CPU.intel?
    sha256 "09d4b0d7eb9946662ba942ffe0dd2d1612858ed3a7cfff153150951d9e9c94d4"
  else
    sha256 "ee5f3087d4719730bc4a160082cfd4db4544cc92b42f4ca1c6635c0824efa242"
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
