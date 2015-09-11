cask :v1 => 'isyncr-desktop' do
  version '5.1.3'
  sha256 'c258905a72cdfcd05ae45bf53c5939946adb7268fe6575a11661e2e11a88edb2'

  url "http://www.jrtstudio.com/files/iSyncr%20Desktop%20#{version}.pkg"
  name 'iSyncr Desktop'
  homepage 'http://www.jrtstudio.com/iSyncr-iTunes-for-Android'
  license :unknown # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "iSyncr Desktop #{version}.pkg"

  uninstall :pkgutil => 'com.test.iSyncr.pkg',
            :quit    => 'com.JRTStudio.iSyncrWiFi'
end
