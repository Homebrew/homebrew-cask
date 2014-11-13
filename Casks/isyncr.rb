cask :v1 => 'isyncr' do
  version '5.0.3'
  sha256 'd819a9063ce2bc8294464efae1518f0eb3882debfa86b84754be976ede50d6de'

  url "http://www.jrtstudio.com/files/iSyncr%20#{version}.pkg"
  homepage 'http://www.jrtstudio.com/iSyncr-iTunes-for-Android'

  pkg "iSyncr #{version}.pkg"

  uninstall :pkgutil => 'com.test.iSyncr.pkg',
            :quit    => 'com.JRTStudio.iSyncrWiFi'
end
