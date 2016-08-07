cask 'switchresx' do
  version '4.5.5'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://www.madrau.com/data/switchresx/SwitchResX#{version.major}.zip"
  name 'SwitchResX'
  homepage 'https://www.madrau.com/'
  license :freemium

  prefpane 'SwitchResX.prefPane'

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
