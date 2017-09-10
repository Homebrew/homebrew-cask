cask 'colormunki-display' do
  version '1.1.4'
  sha256 'a1e1668730bcf8bf2762941375b295bf6d7d848514a9cb11e36c32c6688d6745'

  # my.xrite.com/Downloads/Software/ColorMunki/Display was verified as official when first introduced to the cask
  url "https://my.xrite.com/Downloads/Software/ColorMunki/Display/#{version}/Mac/ColorMunki_Display.zip"
  name 'ColorMunki Display'
  homepage 'https://xritephoto.com/colormunki-display'

  pkg 'ColorMunki Display.pkg'

  uninstall pkgutil: 'com.xrite.colormunkiDisplay.*'
end
