class SynologyCloudStation < Cask
  url 'http://global.download.synology.com/download/Tools/CloudStation/3109/Mac/CloudStation-3109-Mac-Installer.dmg'
  homepage 'http://www.synology.com/'
  version '3109'
  sha256 '32b3260a8da765840f602830dadfc95c2451e0d3eaded202ec8d315221a25d82'
  install 'CloudStation-3109-Mac-Installer.pkg'
  uninstall :pkgutil => 'synology.cloudstation.installer',
            :launchctl => 'com.synology.Synology Cloud Station'
end
