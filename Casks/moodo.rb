cask 'moodo' do
  version '1.0.6'
  sha256 'c4d7d446cee0faa37cce36f930ddcc8b68d423e8e6dadf4776d6ac9580e404f1'

  # github.com/MooDoApp/MooDoApp.github.io was verified as official when first introduced to the cask
  url "https://github.com/MooDoApp/MooDoApp.github.io/releases/download/v#{version}/Moo.do-#{version}-mac.zip"
  appcast 'https://github.com/MooDoApp/MooDoApp.github.io/releases.atom',
          checkpoint: 'd95a5384b386f950183595d4dd703764d41b634cf96627dfcafc0021a9519d9d'
  name 'Moo.do'
  homepage 'https://www.moo.do/'

  app 'Moo.do.app'

  uninstall quit: [
                    'com.moodo.moodomac.helper',
                    'com.moodo.moodomac',
                  ]

  zap delete: [
                '~/Library/Caches/com.moodo.moodomac',
                '~/Library/Caches/com.moodo.moodomac.ShipIt',
                '~/Library/Cookies/com.moodo.moodomac.binarycookies',
                '~/Library/Saved Application State/com.moodo.moodomac.savedState ',
              ],
      trash:  [
                '~/Library/Application Support/Moo.do',
                '~/Library/Preferences/com.moodo.moodomac.helper.plist',
                '~/Library/Preferences/com.moodo.moodomac.plist',
              ]
end
