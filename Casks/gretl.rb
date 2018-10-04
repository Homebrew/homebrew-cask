cask 'gretl' do
  version '2018c'
  sha256 '7f216f933632beefde51ce8fe8d619b9764b0964b0a5d46f84e47f113f59ba07'

  url "https://downloads.sourceforge.net/gretl/gretl-#{version}-quartz.pkg"
  appcast 'https://sourceforge.net/projects/gretl/rss?path=/gretl'
  name 'gretl'
  homepage 'http://gretl.sourceforge.net/'

  pkg "gretl-#{version}-quartz.pkg"

  uninstall pkgutil: 'net.sourceforge.gretl.base.pkg'
end
