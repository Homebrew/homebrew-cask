cask 'switchresx' do
  version '4.9.2'
  sha256 '983e239abced6fc50e9b7f97806b0af2b37a71e6c752a084d45898b8579cb69b'

  url "https://www.madrau.com/data/switchresx/SwitchResX#{version.major}.zip"
  appcast "https://www.madrau.com/SRXCurrentVersion#{version.major}"
  name 'SwitchResX'
  homepage 'https://www.madrau.com/'

  prefpane 'SwitchResX.app/Contents/Resources/SwitchResX.prefPane'

  uninstall quit:   [
                      'fr.madrau.switchresx.app',
                      'fr.madrau.switchresx.daemon', # note, daemon does not :quit cleanly
                    ],
            signal: [
                      ['INT',  'fr.madrau.switchresx.daemon'],
                      ['KILL', 'fr.madrau.switchresx.daemon'],
                    ],
            delete: [
                      '/Library/ScriptingAdditions/SwitchResX Extensions.osax',
                      '/Library/ScriptingAdditions/SwitchResX Menu.osax',
                    ]

  zap trash: [
               '~/Library/Caches/fr.madrau.switchresx.app',
               '~/Library/Caches/fr.madrau.switchresx.daemon',
               '~/Library/Cookies/fr.madrau.switchresx.app.binarycookies',
               '~/Library/Cookies/fr.madrau.switchresx.daemon.binarycookies',
               '~/Library/Preferences/fr.madrau.switchresx.app.plist',
               '~/Library/Preferences/fr.madrau.switchresx.daemon.plist',
               '~/Library/Preferences/fr.madrau.switchres.desktop-layout.plist',
               '~/Library/Saved Application State/fr.madrau.switchresx.app.savedState',
             ]
end
