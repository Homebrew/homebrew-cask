cask 'datadog-agent' do
  version '6.11.0-1'
  sha256 'b38c9769eaaafa535fe0f5f07910316454c34a0ce85bdd4e43f79cb08051e2d8'

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
            # pkgutil: 'com.datadoghq.agent' # this is commented out because PKG uninstallation seems to fail due to missing files caused by case insensitivity and files that differ only in case. See https://github.com/Homebrew/homebrew-cask/pull/54739.
            delete:    [
                         '/Applications/Datadog Agent.app',
                         '/opt/datadog-agent/',
                         '/private/var/db/receipts/com.datadoghq.agent.*',
                       ]

  zap trash: '/opt/datadog-agent'

  caveats <<~EOS
    You will need to update /opt/datadog-agent/etc/datadog.yaml and replace APIKEY with your api key

    If you ever want to start/stop the Agent, please use the Datadog Agent App or datadog-agent command.
    It will start automatically at login, if you want to enable it at startup, run these commands:

    sudo cp '/opt/datadog-agent/etc/com.datadoghq.agent.plist' /Library/LaunchDaemons
    sudo launchctl load -w /Library/LaunchDaemons/com.datadoghq.agent.plist
  EOS
end
