cask "datadog-agent" do
  version "7.59.1-1"
  sha256 "c4782f3abe68f54aac80d3e1102a4175b6fa48c3e58562bb8836eb76fb8689fc"

  url "https://dd-agent.s3.amazonaws.com/datadog-agent-#{version}.dmg",
      verified: "dd-agent.s3.amazonaws.com/"
  name "Datadog Agent"
  desc "Monitoring and security across systems, apps, and services"
  homepage "https://www.datadoghq.com/"

  livecheck do
    url "https://dd-agent.s3.amazonaws.com/"
    regex(%r{<Key>datadog-agent-([\d.-]+)\.dmg</Key>}i)
  end

  installer manual: "datadog-agent-#{version}.pkg"

  uninstall launchctl: "com.datadoghq.agent",
            quit:      "com.datadoghq.agent",
            pkgutil:   "com.datadoghq.agent",
            delete:    [
              "/Applications/Datadog Agent.app",
              "/usr/local/bin/datadog-agent",
            ]

  zap trash: [
    "/opt/datadog-agent",
    "~/.datadog-agent",
    "~/Library/LaunchAgents/com.datadoghq.agent.plist",
  ]

  caveats <<~EOS
    You will need to update /opt/datadog-agent/etc/datadog.yaml and replace
    APIKEY with your api key

    If you ever want to start/stop the Agent, please use the Datadog Agent App
    or datadog-agent command.
    It will start automatically at login, if you want to enable it at startup,
    run these commands:

      sudo cp '/opt/datadog-agent/etc/com.datadoghq.agent.plist.example' \
      /Library/LaunchDaemons/com.datadoghq.agent.plist

      sudo launchctl load -w /Library/LaunchDaemons/com.datadoghq.agent.plist
  EOS
end
