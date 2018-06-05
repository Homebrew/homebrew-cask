cask 'isyncr' do
  version '5.14.0'
  sha256 '68e65554b12083c35b0180c6535cefcc7897c0aa4902848dcf706459ecfab3ad'

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
