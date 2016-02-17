cask 'fpcsrc' do
  version '2.6.4-20140421'
  sha256 'fa7fdfff220241de9e11222e159bcc1b6f3c82588d437191666b5b0ec5fb51cf'

  # sourceforge.net/lazarus was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/lazarus/fpcsrc-#{version}-i386-macosx.dmg"
  name 'Free Pascal Compiler Source'
  homepage 'http://www.freepascal.org/'
  license :gpl

  pkg "fpcsrc-#{version}.pkg"

  uninstall pkgutil: 'org.freepascal.fpc.source'
end
