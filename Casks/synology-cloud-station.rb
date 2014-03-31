class SynologyCloudStation < Cask
  url 'http://global.download.synology.com/download/Tools/CloudStation/3005/Mac/CloudStation-3005-Mac-Installer.dmg'
  homepage 'http://www.synology.com/'
  version '3005'
  sha256 '366847d1c2ccc242a0be24775610ca39b0498a0ae07cd38bf9dbd1e26839995f'
  install 'CloudStation-3005-Mac-Installer.pkg'
  uninstall :pkgutil => 'synology.cloudstation.installer',
            :launchctl => 'com.synology.Synology Cloud Station'
end
