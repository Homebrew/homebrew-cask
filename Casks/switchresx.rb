class Switchresx < Cask
  url 'http://www.madrau.com/data/switchresx/SwitchResX4.zip'
  homepage 'http://www.madrau.com'
  version '4.x'
  sha256 :no_check
  prefpane 'SwitchResX.prefPane'
  caskroom_only true # hack to activate uninstall stanza
  uninstall :quit => [
      'fr.madrau.switchresx.app',
      'fr.madrau.switchresx.daemon',  # note, daemon does not :quit cleanly
    ],
    :signal => [
      [ 'INT', 'fr.madrau.switchresx.daemon' ],
      [ 'KILL', 'fr.madrau.switchresx.daemon' ],
    ],
    :files => [
      '/Library/ScriptingAdditions/SwitchResX Extensions.osax',
      '/Library/ScriptingAdditions/SwitchResX Menu.osax',
    ]
end
