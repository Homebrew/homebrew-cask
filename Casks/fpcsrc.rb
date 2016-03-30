cask 'fpcsrc' do
  version '3.0.0-20151207'
  sha256 '42184722c8836cce6e4c57e9f9b43b0d0cd1f4f3cbccc5cf2ceb07d193ac6092'

  # sourceforge.net/lazarus was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/lazarus/fpcsrc-#{version}-macosx.dmg"
  name 'Free Pascal Compiler Source'
  homepage 'http://www.freepascal.org/'
  license :gpl

  pkg "fpcsrc-#{version}.pkg"

  uninstall pkgutil: 'org.freepascal.fpc.source'
end
