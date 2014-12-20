cask :v1 => 'switchresx' do
  version '4.5'
  sha256 'a8d1bb95be0d2b1ddbae50f77231568bcd00f2030d337386d85d34f06ea6b065'

  url "http://www.madrau.com/data/switchresx/SwitchResX#{version.to_i}.zip"
  homepage 'http://www.madrau.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

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
