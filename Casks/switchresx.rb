cask :v1 => 'switchresx' do
  version '4.5.2'
  sha256 '8129d66e7e9c297ea6b1d866f83599d134e235b17804a510f753790ac28f8f3a'

  url "http://www.madrau.com/data/switchresx/SwitchResX#{version.to_i}.zip"
  name 'SwitchResX'
  homepage 'http://www.madrau.com'
  license :freemium

  prefpane 'SwitchResX.prefPane'

  uninstall :quit   => [
                        'fr.madrau.switchresx.app',
                        'fr.madrau.switchresx.daemon',  # note, daemon does not :quit cleanly
                       ],
            :signal => [
                        [ 'INT',  'fr.madrau.switchresx.daemon' ],
                        [ 'KILL', 'fr.madrau.switchresx.daemon' ],
                      ],
            :delete => [
                        '/Library/ScriptingAdditions/SwitchResX Extensions.osax',
                        '/Library/ScriptingAdditions/SwitchResX Menu.osax',
                       ]
end
