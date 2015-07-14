cask :v1 => 'isyncr' do
  version '5.0.8'
  sha256 '1b1c0e6054b890fa7dd903cc680fd2543bc6b40b34cde2d23f4c2e355dcffb87'

  url "http://www.jrtstudio.com/files/iSyncr%20#{version}.pkg"
  name 'iSyncr'
  homepage 'http://www.jrtstudio.com/iSyncr-iTunes-for-Android'
  license :unknown # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "iSyncr #{version}.pkg"

  uninstall :pkgutil => 'com.test.iSyncr.pkg',
            :quit    => 'com.JRTStudio.iSyncrWiFi'
end
