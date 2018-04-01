cask 'isyncr' do
  version '5.6.3'
  sha256 'e4de8de36b1e191aa511846549cac5f36727e44b0ad2607efa07a249fde55d91'

  url "http://www.jrtstudio.com/files/iSyncr%20Desktop%20#{version}.pkg"
  appcast 'http://www.jrtstudio.com/files/SlashiSyncr25.js',
          checkpoint: '79c4376b562e3835b47239d837bfe6676657b38ff60018bbc31e99e07b32950d'
  name 'iSyncr Desktop'
  homepage 'http://www.jrtstudio.com/iSyncr-iTunes-for-Android'

  pkg "iSyncr Desktop #{version}.pkg"

  uninstall pkgutil: 'com.jrtstudio.iSyncrDesktop',
            quit:    'com.JRTStudio.iSyncrWiFi'
end
