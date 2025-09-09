cask "postman-agent" do
  arch arm: "osx_arm64", intel: "osx_64"

  version "0.4.61"
  sha256 arm:   "066cfd48670da6b7dc057056cd1e05ee64d8c9999aa48678eb8816655e31dd65",
         intel: "031535e2e21fdee5639ea3c648814203432dd999e496d4042743e22b8b814bcd"

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
