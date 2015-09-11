cask :v1 => 'switchresx' do
  version '4.5.1'
  sha256 '6d044b3be800f8e8c34a4b87cad7100d69a40b165f6e12297aa42516891b7aed'

  url "http://www.madrau.com/data/switchresx/SwitchResX#{version.to_i}.zip"
  name 'SwitchResX'
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
