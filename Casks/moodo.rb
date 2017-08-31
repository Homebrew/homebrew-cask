cask 'moodo' do
  version '1.0.6'
  sha256 'c4d7d446cee0faa37cce36f930ddcc8b68d423e8e6dadf4776d6ac9580e404f1'

  url 'https://github.com/MooDoApp/MooDoApp.github.io/releases/download/v1.0.6/Moo.do-1.0.6-mac.zip'
  appcast 'https://github.com/MooDoApp/MooDoApp.github.io/releases.atom',
          checkpoint: 'd95a5384b386f950183595d4dd703764d41b634cf96627dfcafc0021a9519d9d'
  name 'Moo.do'
  homepage 'https://www.moo.do'

  app 'Moo.do.app'

  uninstall quit: [
                  'com.moodo.moodomac.helper',
                  'com.moodo.moodomac'
                  ]

  zap       delete: [
                    '~/Library/Cookies/com.moodo.moodomac.binarycookies',
                    '~/Library/Preferences/com.moodo.moodomac.helper.plist',
                    '~/Library/Preferences/com.moodo.moodomac.plist',
                    '~/Library/Application Support/Moo.do',
                    '~/Library/Caches/com.moodo.moodomac',
                    '~/Library/Caches/com.moodo.moodomac.ShipIt',
                    '~/Library/Saved Application State/com.moodo.moodomac.savedState '
                     ]

end
