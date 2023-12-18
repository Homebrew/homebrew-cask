cask "logdna-agent" do
  version "2.2.2"
  sha256 "033077ff2acd4e3f7eacab5c94b07db459d50d788be62a8a091ffa9cb759e41d"

  url "https://github.com/logdna/logdna-agent/releases/download/#{version}/logdna-agent-#{version}.pkg",
      verified: "github.com/logdna/logdna-agent/"
  name "LogDNA Agent"
  desc "Agent streams from log files to your LogDNA account"
  homepage "https://logdna.com/"

  deprecate! date: "2023-12-17", because: :discontinued

  pkg "logdna-agent-#{version}.pkg"

  uninstall pkgutil:   "com.logdna.logdna-agent",
            launchctl: "com.logdna.logdna-agentd"

  caveats do
    <<~EOS
      When you first start logdna-agent, you must set your LogDNA Ingestion Key with the command:
        sudo logdna-agent -k <ingestion-key>

      To always run logdna-agent in the background, use the command:
        sudo launchctl load -w /Library/LaunchDaemons/com.logdna.logdna-agent.plist
    EOS
  end
end
