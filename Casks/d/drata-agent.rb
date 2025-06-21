cask "drata-agent" do
  version "3.8.0"
  sha256 "486a1da234d0059ada0c2947c041e95120f89534e070b1d73ce4503d2adf622d"

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
