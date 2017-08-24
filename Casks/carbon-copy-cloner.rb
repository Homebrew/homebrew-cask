cask 'carbon-copy-cloner' do
  version '4.1.18.4592'
  sha256 'f2beabeb9d6c0a3c7bbc842abb21d7d999f1a6ef587a7e74a962dca64d4bfef4'

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
