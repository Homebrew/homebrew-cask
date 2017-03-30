cask 'colormunki-display' do
  version '1.1.3'
  sha256 '763a6b9e8e704452de79ec07d96853c6a9adbb204fe59376754d79eac5487b92'

  # downloads.xrite.com was verified as official when first introduced to the cask
  url "http://downloads.xrite.com/Downloads/Software/ColorMunki/Display/#{version}/Mac/ColorMunki_Display.zip"
  name 'ColorMunki Display'
  homepage 'http://xritephoto.com/colormunki-display'

  pkg 'ColorMunki Display.pkg'

  uninstall pkgutil: 'com.xrite.colormunkiDisplay.*'
end
