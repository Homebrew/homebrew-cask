cask 'metadatics' do
  version '1.5.7'
  sha256 'c8baea464a742d35ca0793128d7d2606e59358b7f3e156ac7e7a27694db67927'

  url 'https://www.markvapps.com/applications/metadatics/Metadatics.zip'
  appcast 'https://www.markvapps.com/applications/metadatics/metadatics_appcast.xml',
          checkpoint: '5e5f3ccd1d7718ab02dc32fd1f36ef1b0fe29d6d096b74429a575cb1d1489bee'
  name 'Metadatics'
  homepage 'https://www.markvapps.com/metadatics'

  app 'Metadatics.app'

  zap trash: [
               '~/Library/Caches/com.markvapps.metadatics',
               '~/Library/Cookies/com.markvapps.metadatics.binarycookies',
               '~/Library/Preferences/com.markvapps.metadatics.plist',
               '~/Library/Saved Application State/com.markvapps.metadatics.savedState',
             ]
end
