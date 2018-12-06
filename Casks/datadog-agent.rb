cask 'datadog-agent' do
  version '6.6.0-1'
  sha256 '7192d6ce534a34c47818de3535ef491306e26a339b0e6d7edd61112e607abe2c'

  # s3.amazonaws.com/dd-agent was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/dd-agent/datadog-agent-#{version}.dmg"
  appcast 'https://github.com/DataDog/datadog-agent/releases.atom'
  name 'Datadog Agent'
  homepage 'https://www.datadoghq.com/'

  pkg "datadog-agent-#{version}.pkg"

  preflight do
    require 'etc'
    File.write('/tmp/datadog-install-user', Etc.getlogin)
  end

  uninstall launchctl: 'com.datadoghq.agent',
            delete:    '/Applications/Datadog Agent.app',
            pkgutil:   'com.datadoghq.agent'

  zap trash: '/opt/datadog-agent'

  caveats <<~EOS
    You will need to update /opt/datadog-agent/etc/datadog.yaml and replace APIKEY with your api key

    If you ever want to start/stop the Agent, please use the Datadog Agent App or datadog-agent command.
    It will start automatically at login, if you want to enable it at startup, run these commands:

    sudo cp '/opt/datadog-agent/etc/com.datadoghq.agent.plist' /Library/LaunchDaemons
    sudo launchctl load -w /Library/LaunchDaemons/com.datadoghq.agent.plist
  EOS
end
