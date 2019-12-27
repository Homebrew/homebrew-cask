cask 'moodo' do
  version '1.4.1'
  sha256 'b9974d621f17a972bf06cae3ae666997b0377ea13b8e7f348cc6c64347fcff7d'

  # github.com/MooDoApp/MooDoApp.github.io was verified as official when first introduced to the cask
  url "https://github.com/MooDoApp/MooDoApp.github.io/releases/download/v#{version}/Moo.do-#{version}.dmg"
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
