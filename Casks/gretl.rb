cask 'gretl' do
  version '2019d'
  sha256 '3bc341c7279fb74a4ff7788837f0bd55839141a1414b5c9006c475bedaf5da07'

  # downloads.sourceforge.net/gretl was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gretl/gretl-#{version}-quartz.pkg"
  appcast 'https://sourceforge.net/projects/gretl/rss?path=/gretl'
  name 'gretl'
  homepage 'https://gretl.sourceforge.io/'

  pkg "gretl-#{version}-quartz.pkg"

  uninstall pkgutil: 'net.sourceforge.gretl.base.pkg'
end
