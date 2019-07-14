cask 'switchresx' do
  version '4.9.0'
  sha256 'e31bafdff28dce2767cbc3099d0b1e506789828c3e4489b7903c62a90aaf82c3'

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
