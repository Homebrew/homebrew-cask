class Nodeclipse < Cask
  url 'https://downloads.sourceforge.net/sourceforge/nodeclipse/Enide-Studio-2014-011-20140228-macosx-cocoa-x86_64.zip'
  homepage 'http://www.nodeclipse.org/'
  version '0.11-preview'
  sha256 '01f630446313cb981ce2ee9b934977cfdbf318e09761dee244a3256f9a559003'
  before_install do
    system '/bin/mv', '--', destination_path.join('eclipse/Eclipse.app'), destination_path.join('eclipse/Nodeclipse.app')
  end
  link 'eclipse/Nodeclipse.app'
end
