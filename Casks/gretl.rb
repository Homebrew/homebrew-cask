cask 'gretl' do
  version '2020a'
  sha256 '00ee333c92caf9542498d1891d505e47029329a84f3cce9e4478739c8056184e'

  # downloads.sourceforge.net/gretl was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gretl/gretl-#{version}-quartz.pkg"
  appcast 'https://sourceforge.net/projects/gretl/rss?path=/gretl'
  name 'gretl'
  homepage 'https://gretl.sourceforge.io/'

  pkg "gretl-#{version}-quartz.pkg"

  uninstall pkgutil: 'net.sourceforge.gretl.base.pkg'
end
