cask 'lazarus' do
  version '2.0.6'
  sha256 '9bb74062462775cf325288f2e42361d7287ad8dd9c0150ef79710442a05389f0'

  # sourceforge.net/lazarus was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/lazarus/LazarusIDE-#{version}-macos-x86_64.pkg"
  appcast 'https://sourceforge.net/projects/lazarus/rss'
  name 'Lazarus'
  homepage 'https://www.lazarus-ide.org/'

  depends_on formula: 'fpc'
  depends_on cask: 'fpcsrc'

  pkg "LazarusIDE-#{version}-macos-x86_64.pkg"

  uninstall pkgutil: 'org.lazarus-ide.pkg.LazarusIDE',
            delete:  [
                       '/Applications/Lazarus.app',
                       '/Applications/Lazarus.app/Contents/Resources/startlazarus.app',
                     ]
end
