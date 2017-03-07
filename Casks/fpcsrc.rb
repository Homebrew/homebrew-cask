cask 'fpcsrc' do
  version '3.0.2'
  sha256 '1c61c7423a632150d27efd39fad810adda9b008b4cfd250a911c4583854a4016'

  # sourceforge.net/lazarus was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/lazarus/fpc-src-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/lazarus/rss',
          checkpoint: 'ce6a7706e0ea9631ad9bc2e4a3d8d712459c79ea239fee34b7aace8cbe5ecd94'
  name 'Free Pascal Compiler Source'
  homepage 'http://www.freepascal.org/'

  pkg "fpcsrc-#{version}.pkg"

  uninstall pkgutil: 'org.freepascal.fpc.source'
end
