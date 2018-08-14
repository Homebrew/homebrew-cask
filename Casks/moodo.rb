cask 'moodo' do
  version '1.1.3'
  sha256 '986d21068d25d7207f93f07901f48a387c36e59a6882b443df606ce3a846abb0'

  # github.com/MooDoApp/MooDoApp.github.io was verified as official when first introduced to the cask
  url "https://github.com/MooDoApp/MooDoApp.github.io/releases/download/v#{version}/Moo.do-#{version}-mac.zip"
  appcast 'https://github.com/MooDoApp/MooDoApp.github.io/releases.atom'
  name 'Moo.do'
  homepage 'https://www.moo.do/'

  app 'Moo.do.app'

  uninstall quit: [
                    'com.moodo.moodomac.helper',
                    'com.moodo.moodomac',
                  ]

  zap trash: [
               '~/Library/Application Support/Moo.do',
               '~/Library/Caches/com.moodo.moodomac',
               '~/Library/Caches/com.moodo.moodomac.ShipIt',
               '~/Library/Cookies/com.moodo.moodomac.binarycookies',
               '~/Library/Preferences/com.moodo.moodomac.helper.plist',
               '~/Library/Preferences/com.moodo.moodomac.plist',
               '~/Library/Saved Application State/com.moodo.moodomac.savedState ',
             ]
end
