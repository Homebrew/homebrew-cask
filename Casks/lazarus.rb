cask 'lazarus' do
  version '2.0.8'
  sha256 'a2cf0b4594d5ee5b0750d244c1607afe0eda4cc95f641a67aab996582c76e66d'

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
