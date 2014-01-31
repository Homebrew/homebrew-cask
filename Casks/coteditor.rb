class Coteditor < Cask
  if MacOS.version < "10.7"
    url 'http://dl.sourceforge.jp/coteditor/54872/CotEditor_1.3.1.dmg'
    sha1 '6f946bc6cdbb40036124b8cda4b283c25eac5077'
  else
    url 'http://dl.sourceforge.jp/coteditor/54872/CotEditor_1.3.1_For10.7.dmg'
    sha1 'b169f2b90b7e9355679172d54842759e0239c6f7'
  end
  homepage 'http://sourceforge.jp/projects/coteditor/'
  version '1.3.1'
  link 'CotEditor.app'
end
