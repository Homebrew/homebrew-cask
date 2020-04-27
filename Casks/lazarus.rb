cask 'lazarus' do
  version '2.0.8'
  sha256 '7cacde9e30ca5055acaa54f28793e2c5c296ac440b3d27594340caf26c25150a'

  # sourceforge.net/lazarus/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/lazarus/LazarusIDE-#{version}-macos-x86_64.pkg"
  appcast 'https://sourceforge.net/projects/lazarus/rss'
  name 'Lazarus'
  homepage 'https://www.lazarus-ide.org/'

  depends_on formula: 'fpc'
  depends_on cask: 'fpcsrc'

  pkg "LazarusIDE-#{version}-macos-x86_64.pkg"

  uninstall pkgutil: 'org.lazarus-ide.pkg.LazarusIDE',
            delete:  '/Applications/Lazarus.app'
end
