cask :v1 => 'switchresx' do
  version '4.4.1'
  sha256 'a7fd24312ab65a1d3da00da4fc9fb1d15a463f5d93c922bffa4ecfbe87b8e3cf'

  url "http://www.madrau.com/data/switchresx/SwitchResX#{version.to_i}.zip"
  homepage 'http://www.madrau.com'
  license :unknown    # todo: improve this machine-generated value

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
