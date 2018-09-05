cask 'colormunki-display' do
  version '1.1.5'
  sha256 'acde3f292d97f8af4f07ddef15c44c5c691db5df3b7068732c2ddfc709542f56'

  # my.xrite.com/Downloads/Software/ColorMunki/Display was verified as official when first introduced to the cask
  url "https://my.xrite.com/Downloads/Software/ColorMunki/Display/#{version}/Mac/ColorMunki_Display.zip"
  name 'ColorMunki Display'
  homepage 'https://xritephoto.com/colormunki-display'

  pkg 'ColorMunki Display.pkg'

  uninstall pkgutil: [
                       'com.xrite.colormunkiDisplay.*',
                       'com.xrite.colormunkiTray.plist.pkg',
                       'com.xrite.xritedeviceservices.installer.pkg',
                     ]
end
