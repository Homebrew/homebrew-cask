cask 'moodo' do
  version '1.0.8'
  sha256 '55d67cfc5513ea459ddbd740fac25c88888a54875e02792a79639e224647b055'

  # github.com/MooDoApp/MooDoApp.github.io was verified as official when first introduced to the cask
  url "https://github.com/MooDoApp/MooDoApp.github.io/releases/download/v#{version}/Moo.do-#{version}-mac.zip"
  appcast 'https://github.com/MooDoApp/MooDoApp.github.io/releases.atom',
          checkpoint: 'a4667e31813407a62c223bbbb797ca875be49b4c325f671defc696e232fb4fd2'
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
