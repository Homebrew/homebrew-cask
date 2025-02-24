cask "drata-agent" do
  version "3.7.0"
  sha256 "5284e3c6f95cc701a484c23284dede4831a8deca8949e1bc09d9147bc4626afb"

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
