cask 'switchresx' do
  version '4.9.0'
  sha256 '6a30f259b117db7322f34aeee66379b9ab80cfea7515a9eda77e96fa30b53e2a'

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
end
