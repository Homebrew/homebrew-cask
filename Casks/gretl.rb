cask 'gretl' do
  version '2019a'
  sha256 'c0948e7f46ca0b781c24c6e71ba2bb7f7672992ef266e5b3dbf477329f7a1c5c'

  # downloads.sourceforge.net/gretl was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gretl/gretl-#{version}-quartz.pkg"
  appcast 'https://sourceforge.net/projects/gretl/rss?path=/gretl'
  name 'gretl'
  homepage 'https://gretl.sourceforge.io/'

  pkg "gretl-#{version}-quartz.pkg"

  uninstall pkgutil: 'net.sourceforge.gretl.base.pkg'
end
