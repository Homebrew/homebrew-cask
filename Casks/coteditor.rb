class Coteditor < Cask
  if MacOS.version < "10.7"
    url 'http://osdn.dl.sourceforge.jp/coteditor/54872/CotEditor_1.3.1.dmg'
  else
    url 'http://osdn.dl.sourceforge.jp/coteditor/54872/CotEditor_1.3.1_For10.7.dmg'
  end
  homepage 'http://sourceforge.jp/projects/coteditor/'
  version '1.3.1'
  sha1 'b169f2b90b7e9355679172d54842759e0239c6f7'
  link 'CotEditor.app'
end
