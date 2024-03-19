cask "drata-agent" do
  version "3.6.0"
  sha256 "42e77e3c5100b6290e6c0f97325fcd157cdad26932ac3d366864c1ef34070027"

  url "https://github.com/drata/agent-releases/releases/download/v#{version}/Drata-Agent-mac.dmg",
      verified: "github.com/drata/agent-releases/"
  name "Drata Agent"
  desc "Security audit software"
  homepage "https://drata.com/"

  depends_on macos: ">= :high_sierra"

  app "Drata Agent.app"

  zap trash: [
    "~/Library/Application Support/drata-agent",
    "~/Library/Logs/drata-agent",
    "~/Library/Preferences/com.drata.agent.plist",
  ]
end
