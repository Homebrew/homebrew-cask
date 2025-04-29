cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.43"
  sha256 arm:   "0ad8a2bc67d4f5b76f6dfdfb49356dca698940fe81fefc4a38925a9dd2d05507",
         intel: "f1e6b792b4fbcc0064860e82f8ac547aec32e2ba328fa6e773b422cecc1d5e99"

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
  depends_on macos: ">= :catalina"

  app "Postman Agent.app"

  zap trash: [
    "~/Library/Application Support/PostmanAgent",
    "~/Library/Preferences/com.postmanlabs.agent.mac.plist",
  ]
end
