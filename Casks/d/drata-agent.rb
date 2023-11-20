cask "drata-agent" do
  version "3.4.1"
  sha256 "bb767633658367bd4f81e5f0343a1eeb8b129578343e8726d66b38d19a92fd47"

  url "https://cdn.drata.com/agent/dist/mac/drata-agent-#{version}.dmg"
  name "Drata Agent"
  desc "Security audit software"
  homepage "https://drata.com/"

  # Upstream doesn't appear to publish any public version information. We check
  # GitHub releases as a best guess of when a new version is released.
  livecheck do
    url "https://github.com/drata/drata-agent"
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Drata Agent.app"

  zap trash: [
    "~/Library/Application Support/drata-agent",
    "~/Library/Logs/drata-agent",
    "~/Library/Preferences/com.drata.agent.plist",
  ]
end
