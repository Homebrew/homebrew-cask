cask 'gretl' do
  version '2018a'
  sha256 '43336535c6d9f940b146a1197ffdc72f894755183ab2364d7950e562818c3e08'

  url "https://downloads.sourceforge.net/gretl/gretl-#{version}-quartz.pkg"
  appcast 'https://sourceforge.net/projects/gretl/rss?path=/gretl',
          checkpoint: '8b46ad14178f4fda65d449290905b83b5fa3b44fccf80650fe7e475ec6578852'
  name 'gretl'
  homepage 'http://gretl.sourceforge.net/'

  pkg "gretl-#{version}-quartz.pkg"

  uninstall pkgutil: 'net.sourceforge.gretl.base.pkg'
end
