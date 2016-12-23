cask 'lazarus' do
  version '1.6.2'
  sha256 'd0564cd255fb0612d1ed59c9a09f5e3733e43700e1e980caf5fd75a2b2529170'

  # sourceforge.net/lazarus was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/lazarus/lazarus-#{version}-i686-macosx.dmg"
  appcast 'https://sourceforge.net/projects/lazarus/rss',
          checkpoint: 'e52ea526cfb8b92e3dd7db6eb70eeafd87122259ca5b71a52367a61965201a77'
  name 'Lazarus'
  homepage 'http://www.lazarus-ide.org/'

  depends_on formula: 'fpc'
  depends_on cask: 'fpcsrc'

  pkg 'lazarus.pkg'

  uninstall pkgutil: 'org.freepascal.lazarus.www'
end
