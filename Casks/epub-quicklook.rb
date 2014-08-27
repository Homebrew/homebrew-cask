class EpubQuicklook < Cask
  version 'latest'
  sha256 :no_check

  url 'http://people.ict.usc.edu/~leuski/programming/EPUBQuickLookPlugin.dmg'
  homepage 'http://people.ict.usc.edu/~leuski/programming/epub-quickview.php'

  install 'EpubQuickLook.pkg'
end
