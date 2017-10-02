cask 'carbon-copy-cloner' do
  version '5.0.3.5121'
  sha256 'bce7453ae7eb795647c82d99e4d68101f0da07f56fc78e264ed632b57bfad192'

  # bombich.scdn1.secure.raxcdn.com/software/files was verified as official when first introduced to the cask
  url "https://bombich.scdn1.secure.raxcdn.com/software/files/ccc-#{version}.zip"
  name 'Carbon Copy Cloner'
  homepage 'https://bombich.com/'

  app 'Carbon Copy Cloner.app'

  uninstall login_item: 'CCC User Agent',
            quit:       [
                          'com.bombich.ccc',
                          'com.bombich.cccuseragent',
                        ]

  zap delete: [
                '~/Library/Caches/com.bombich.ccc',
                '~/Library/Saved Application State/com.bombich.ccc.savedState',
              ],
      trash:  [
                '~/Library/Application Support/com.bombich.ccc',
                '~/Library/Preferences/com.bombich.ccc.plist',
              ]
end
