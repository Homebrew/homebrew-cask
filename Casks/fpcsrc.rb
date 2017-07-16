cask 'fpcsrc' do
  version '3.0.2,20170228'
  sha256 'ca3e47394e65c8a53a6bdb5f4f8551f54a036e8613865bca73b231b059be9bc8'

  # sourceforge.net/lazarus was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/lazarus/fpc-src-#{version.before_comma}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/lazarus/rss',
          checkpoint: '8ab02d40404440038034b43801b98c89c3c3e278a0a2a8bfedb5951223e47ab1'
  name 'Free Pascal Compiler Source'
  homepage 'https://www.freepascal.org/'

  pkg "fpcsrc-#{version.before_comma}-#{version.after_comma}.pkg"

  uninstall pkgutil: 'org.freepascal.fpc.source'
end
