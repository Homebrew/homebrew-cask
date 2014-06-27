class Djview < Cask
  version '4.5'
  sha256 'eec2efee86136725ae0a7164f80e2cea428c647fe987e3b6843b81280c7c7664'

  url 'https://downloads.sourceforge.net/sourceforge/djvu/djvulibre-3.5.22%2Bdjview-4.5-intel-3.zip'
  homepage 'http://djvu.sourceforge.net/'

  nested_container 'djvulibre-3.5.22+djview-4.5-intel.dmg'
  link 'DjView.app'
end
