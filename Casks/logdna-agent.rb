cask "logdna-agent" do
  version "2.0.0"
  sha256 "70bbb3dd45b6b4c8936c6c6b8d5c4106b2cc803e5eef3b9c614a42dba2c34450"

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
    When you first start logdna-agent, you must set your LogDNA API key with the command:
      sudo logdna-agent -k <api-key>

    To always run logdna-agent in the background, use the command:
      sudo launchctl load -w /Library/LaunchDaemons/com.logdna.logdna-agent.plist
  EOS
end
