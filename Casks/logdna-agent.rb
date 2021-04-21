cask "logdna-agent" do
  version "2.1.2"
  sha256 "daa76a854ba459c4a0b6400f326a6ae98f53f404bff9ed51a70e23ca08939416"

  url "https://github.com/logdna/logdna-agent/releases/download/#{version}/logdna-agent-#{version}.pkg",
      verified: "github.com/logdna/logdna-agent/"
  name "LogDNA Agent"
  desc "Agent streams from log files to your LogDNA account"
  homepage "https://logdna.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
