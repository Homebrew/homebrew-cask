cask 'datadog-agent' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host as per vendor install scripts/documentation
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

  caveats 'You will need to update /opt/datadog-agent/etc/datadog.conf and replace APIKEY with your api key.'
end
