cask 'isyncr' do
  version '5.6.3'
  sha256 'e4de8de36b1e191aa511846549cac5f36727e44b0ad2607efa07a249fde55d91'

  url "http://www.jrtstudio.com/files/iSyncr%20Desktop%20#{version}.pkg"
  appcast 'http://www.jrtstudio.com/files/SlashiSyncr25.js',
          checkpoint: '65385df99037be7b37ea118f503a51036b2af6c11a3c6230ff5b4f3576dee4ab'
  name 'iSyncr Desktop'
  homepage 'http://www.jrtstudio.com/iSyncr-iTunes-for-Android'

  depends_on macos: '>= :mountain_lion'

  pkg "iSyncr Desktop #{version}.pkg"

  uninstall pkgutil: 'com.jrtstudio.iSyncrDesktop',
            quit:    'com.JRTStudio.iSyncrWiFi'
end
