cask 'carbon-copy-cloner' do
  version '5.0.5061'
  sha256 '1fcd53c453ece31d25f0b1d86b5ffff8590f267aa4355711458db1940c2fe74c'

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
