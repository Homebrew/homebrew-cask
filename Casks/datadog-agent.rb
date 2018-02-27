cask 'datadog-agent' do
  version '6.0.0-1'
  sha256 'b2ea2660ea4ff8e1e43edc1546df73333fbec6cb58fd747f11028921bcc97d27'

  # s3.amazonaws.com/dd-agent was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/dd-agent/datadogagent.dmg'
  name 'Datadog Agent'
  homepage 'https://www.datadoghq.com/'

  pkg "datadog-agent-#{version}.pkg"

  preflight do
    require 'etc'
    File.open('/tmp/datadog-install-user', 'w') { |f| f.write(Etc.getlogin) }
  end

  uninstall pkgutil: 'com.datadoghq.agent'

  zap trash: '/opt/datadog-agent'

  caveats <<~EOS
    You will need to update /opt/datadog-agent/etc/datadog.conf and replace APIKEY with your api key

    If you ever want to start/stop the Agent, please use the Datadog Agent App or datadog-agent command.
    It will start automatically at login, if you want to enable it at startup, run these commands:

    sudo cp '/opt/datadog-agent/etc/com.datadoghq.agent.plist' /Library/LaunchDaemons
    sudo launchctl load -w /Library/LaunchDaemons/com.datadoghq.agent.plist
  EOS
end
