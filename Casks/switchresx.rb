class Switchresx < Cask
  version '4.4'
  sha256 "39c36694a1955f3f97bdb3bcb7591be06b601b9557d539abd05b039bcfb8b19f"

  url 'http://www.madrau.com/data/switchresx/SwitchResX4.zip'
  homepage 'http://www.madrau.com'

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
