cask "datadog-agent" do
  arch arm: "arm64", intel: "x86_64"

  version "7.72.1-1"
  sha256 arm:   "efc0eddd304051af37c47ece27f62ae7d37265eb8c55621bb69a8e4fc3cc2840",
         intel: "38395ef5951441d76a01e882d1987ec72eeddeb118092adf2585474ed65ef05e"

  url "https://dd-agent.s3.amazonaws.com/datadog-agent-#{version}.#{arch}.dmg",
      verified: "dd-agent.s3.amazonaws.com/"
  name "Datadog Agent"
  desc "Monitoring and security across systems, apps, and services"
  homepage "https://www.datadoghq.com/"

  livecheck do
    url "https://dd-agent.s3.amazonaws.com/?prefix=datadog-agent"
    regex(/datadog-agent[._-]v?(\d+(?:[.-]\d+)+)\.#{arch}\.dmg/i)
    strategy :xml do |xml, regex|
      xml.get_elements("//Contents/Key").map do |item|
        match = item.text&.strip&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: ">= :big_sur"

  installer manual: "datadog-agent-#{version}.#{arch}.pkg"

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
