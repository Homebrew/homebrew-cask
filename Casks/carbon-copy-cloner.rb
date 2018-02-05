cask 'carbon-copy-cloner' do
  version '5.0.8.5263'
  sha256 'e33ec1d2e4863b80710ed467b8046bc43bcda24e05c7bcb1938998a085f327b6'

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

  zap trash: [
               '~/Library/Application Support/com.bombich.ccc',
               '~/Library/Caches/com.bombich.ccc',
               '~/Library/Preferences/com.bombich.ccc.plist',
               '~/Library/Saved Application State/com.bombich.ccc.savedState',
             ]
end
