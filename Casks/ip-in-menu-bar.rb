cask :v1 => 'ip-in-menu-bar' do
  version :latest
  sha256 :no_check

  url 'http://www.monkeybreadsoftware.de/Software/IPinmenubar.dmg'
  homepage 'http://www.monkeybreadsoftware.de/Software/IPinmenubar.shtml'
  license :unknown # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'IP in menu bar.app'
end
