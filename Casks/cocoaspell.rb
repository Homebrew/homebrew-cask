class Cocoaspell < Cask
  url 'http://people.ict.usc.edu/~leuski/cocoaspell/cocoAspell.2.1.dmg'
  homepage 'http://cocoaspell.leuski.net/'
  version '2.1'
  sha1 'af2a0586591f9967da1a1d1444603f1c8e37945c'
  install 'cocoAspell.pkg'
  uninstall :pkgutil => 'net.leuski.cocoaspell.*', :files => [
    '/Application Support/cocoAspell/aspell6-en-6.0-0',
    '/Library/PreferencePanes/Spelling.prefPane'
  ]

  def caveats; <<-EOS.undent
    Non-English dictionaries must be installed separately.  For more information,
    see http://people.ict.usc.edu/~leuski/cocoaspell/install_dict.php .
    EOS
  end
end
