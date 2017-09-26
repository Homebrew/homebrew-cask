cask 'carbon-copy-cloner' do
  version '5.0.2.5103'
  sha256 '85d563c0499544f85fb32a069be37a6ddb529fbc8dcc56e45a3a4f5cecedcb0c'

  url "https://bombich.com/software/download_ccc.php?v=#{version}"
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
