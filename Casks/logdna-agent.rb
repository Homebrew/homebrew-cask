cask "logdna-agent" do
  version "2.1.0"
  sha256 "5b15b0d400db76795d4938f1dd9027d02a1c141685568a6cd9f18ca48a026acd"

  # github.com/logdna/logdna-agent/ was verified as official when first introduced to the cask
  url "https://github.com/logdna/logdna-agent/releases/download/#{version}/logdna-agent-#{version}.pkg"
  appcast "https://github.com/logdna/logdna-agent/releases.atom"
  name "LogDNA Agent"
  desc "Agent streams from log files to your LogDNA account"
  homepage "https://logdna.com/"

  pkg "logdna-agent-#{version}.pkg"

  uninstall pkgutil:   "com.logdna.logdna-agent",
            launchctl: "com.logdna.logdna-agentd"

  caveats <<~EOS
    When you first start logdna-agent, you must set your LogDNA Ingestion Key with the command:
      sudo logdna-agent -k <ingestion-key>

    To always run logdna-agent in the background, use the command:
      sudo launchctl load -w /Library/LaunchDaemons/com.logdna.logdna-agent.plist
  EOS
end
