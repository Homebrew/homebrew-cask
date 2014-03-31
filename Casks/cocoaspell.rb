class Cocoaspell < Cask
  url 'http://people.ict.usc.edu/~leuski/cocoaspell/cocoAspell.2.1.dmg'
  homepage 'http://cocoaspell.leuski.net/'
  version '2.1'
  sha256 '06d6cd7f2b04c47f553c5a3a33ebe6bc5651457521cbe7e3ead84a6cb218053c'
  install 'cocoAspell.pkg'
  uninstall :pkgutil => 'net.leuski.cocoaspell.*', :files => [
    '/Application Support/cocoAspell/aspell6-en-6.0-0',
    '/Library/PreferencePanes/Spelling.prefPane'
  ]
  caveats <<-EOS.undent
    Non-English dictionaries must be installed separately.  For more information,
    see http://people.ict.usc.edu/~leuski/cocoaspell/install_dict.php .
    EOS
end
