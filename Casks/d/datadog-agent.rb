cask "datadog-agent" do
  arch arm: "arm64", intel: "x86_64"

  version "7.85.4-1"
  sha256 arm:   "50026fb80c4a652757ff9bea0e9b9a454e4a6b1dc6e9cdde65f3e50295c0ff23",
         intel: "eca4174d3b616f653f13b6483a75d074aac13e01e89131e17950c25b2c3e7022"

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
