cask :v1 => 'epubquicklook' do
  version :latest
  sha256 :no_check

  url 'http://people.ict.usc.edu/~leuski/programming/EPUBQuickLookPlugin.dmg'
  name 'EPUB QuickLook plugin'
  homepage 'http://people.ict.usc.edu/~leuski/programming/epub-quickview.php'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'EpubQuickLook.pkg'

  uninstall :pkgutil => 'net.leuski.epubQuicklookPlugin.epub.pkg'
end
