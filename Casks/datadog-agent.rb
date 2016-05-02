cask 'datadog-agent' do
  version :5.7.4-1
  sha256 :no_check

  # amazonaws.com/dd-agent is the official download host as per vendor documentation/install script (https://github.com/DataDog/dd-agent/blob/master/packaging/osx/install.sh)
  url 'https://s3.amazonaws.com/dd-agent/datadogagent.dmg'
  name 'Datadog Agent'
  homepage 'https://www.datadoghq.com/'
  license :bsd

  pkg 'datadogagent-5.7.4-1.pkg'

  preflight do
    require 'etc'
    File.open('/tmp/datadog-install-user', 'w') { |f| f.write(Etc.getlogin) }
  end

  uninstall pkgutil: 'com.datadoghq.agent'

  zap delete: '/opt/datadog-agent'

  caveats <<-EOS.undent
    You will need to update /opt/datadog-agent/etc/datadog.conf and replace APIKEY with your api key

    If you ever want to start/stop the Agent, please use the Datadog Agent App or datadog-agent command.
    It will start automatically at login, if you want to enable it at startup, run these commands:

    sudo cp '/opt/datadog-agent/etc/com.datadoghq.agent.plist' /Library/LaunchDaemons
    sudo launchctl load -w /Library/LaunchDaemons/com.datadoghq.agent.plist
  EOS
end
