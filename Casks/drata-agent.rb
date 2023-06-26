cask "drata-agent" do
    version "3.4.1"
    sha256 "bb767633658367bd4f81e5f0343a1eeb8b129578343e8726d66b38d19a92fd47"
  
    url "https://cdn.drata.com/agent/dist/mac/drata-agent-#{version}.dmg"
    name "Drata Agent"
    desc "Trust, Automated"
    homepage "https://drata.com/"
  
    livecheck do
      skip "No version check available"
    end
  
    app "Drata Agent.app"
  
    zap trash: [
      "~/Application Support/drata-agent",
    ]
  end
  