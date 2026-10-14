cask "datadog-agent" do
  arch arm: "arm64", intel: "x86_64"

  version "7.84.3-1"
  sha256 arm:   "af5b7effb7591393ea2bc55a498c064001130752a0896c46743bd946876c68e1",
         intel: "d30af5e4ad3ba30f73426184398eab483d4ee54397e8ebfeb58606e112b2ed75"

  url "https://dd-agent.s3.amazonaws.com/datadog-agent-#{version}.#{arch}.dmg"
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

  depends_on macos: :monterey

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
