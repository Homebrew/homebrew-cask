cask "drata-agent" do
  version "3.9.0"
  sha256 "1a312c713b2b6bdd94638121345db14c339089a686b208e684b2f5a3d3d2edf8"

  url "https://github.com/drata/agent-releases/releases/download/#{version}/Drata-Agent-mac.dmg",
      verified: "github.com/drata/agent-releases/"
  name "Drata Agent"
  desc "Security audit software"
  homepage "https://drata.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Drata Agent.app"

  zap trash: [
    "~/Library/Application Support/drata-agent",
    "~/Library/Logs/drata-agent",
    "~/Library/Preferences/com.drata.agent.plist",
  ]
end
