class SynologyCloudStation < Cask
  version '3111'
  sha256 '562c683719f42881662e97cbfaeb2c7ed22c140e8ef2bbae6db3ffbf57328988'

  url "https://global.download.synology.com/download/Tools/CloudStation/#{version}/Mac/CloudStation-#{version}-Mac-Installer.dmg"
  homepage 'http://www.synology.com/'

  pkg "CloudStation-#{version}-Mac-Installer.pkg"
  uninstall :pkgutil => 'synology.cloudstation.installer',
            :launchctl => 'com.synology.Synology Cloud Station'
end
