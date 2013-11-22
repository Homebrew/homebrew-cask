class Djview < Cask
  url 'http://downloads.sourceforge.net/sourceforge/djvu/djvulibre-3.5.22%2Bdjview-4.5-intel-3.zip'
  homepage 'http://djvu.sourceforge.net/'
  version '4.5'
  sha1 '4c2126b86999ae51c6739c3f3400801f661cbb01'
  nested_container 'djvulibre-3.5.22+djview-4.5-intel.dmg'
  link 'DjView.app'
end
