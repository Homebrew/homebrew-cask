cask 'gretl' do
  version '2017d'
  sha256 'ee2c881924bd339a55ae912a7df6abc76abbbd8d0bf2dc50c0803c8113662329'

  url "https://downloads.sourceforge.net/gretl/gretl-#{version}-quartz.pkg"
  appcast 'https://sourceforge.net/projects/gretl/rss?path=/gretl',
          checkpoint: 'b26795fac004d7e7049cb8c650fa8a3ff85e3d5b7ff6a8190bb033493c995ec4'
  name 'gretl'
  homepage 'http://gretl.sourceforge.net/'

  pkg "gretl-#{version}-quartz.pkg"

  uninstall pkgutil: 'net.sourceforge.gretl.base.pkg'
end
