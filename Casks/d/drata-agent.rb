cask "drata-agent" do
  version "3.6.1"
  sha256 "966a3ad120ef4d46b845b6882859e440e58d75b54a2eb46d5188130975991ede"

  url "https://github.com/drata/agent-releases/releases/download/v#{version}/Drata-Agent-mac.dmg",
      verified: "github.com/drata/agent-releases/"
  name "Drata Agent"
  desc "Security audit software"
  homepage "https://drata.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Drata Agent.app"

  zap trash: [
    "~/Library/Application Support/drata-agent",
    "~/Library/Logs/drata-agent",
    "~/Library/Preferences/com.drata.agent.plist",
  ]
end
