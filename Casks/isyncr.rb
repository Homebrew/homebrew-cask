cask 'isyncr' do
  version '5.2.0'
  sha256 'd7f7fb2701f64e904160b9fb71ed334c8b632080528322274d73940606436d32'

  url "http://www.jrtstudio.com/files/iSyncr%20Desktop%20#{version}.pkg"
  appcast 'http://www.jrtstudio.com/files/SlashiSyncr25.js',
          checkpoint: '79c4376b562e3835b47239d837bfe6676657b38ff60018bbc31e99e07b32950d'
  name 'iSyncr Desktop'
  homepage 'http://www.jrtstudio.com/iSyncr-iTunes-for-Android'

  pkg "iSyncr Desktop #{version}.pkg"

  uninstall pkgutil: 'com.test.iSyncr.pkg',
            quit:    'com.JRTStudio.iSyncrWiFi'
end
