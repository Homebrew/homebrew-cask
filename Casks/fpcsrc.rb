cask 'fpcsrc' do
  version '3.0.0-20151207'
  sha256 '42184722c8836cce6e4c57e9f9b43b0d0cd1f4f3cbccc5cf2ceb07d193ac6092'

  # sourceforge.net/lazarus was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/lazarus/fpcsrc-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/lazarus/rss',
          checkpoint: '56d06477a5cbba6f3669f864fc3b1573d9c01739ae04bc39d1145d7a7f84f888'
  name 'Free Pascal Compiler Source'
  homepage 'http://www.freepascal.org/'

  pkg "fpcsrc-#{version}.pkg"

  uninstall pkgutil: 'org.freepascal.fpc.source'
end
