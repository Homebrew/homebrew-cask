cask 'gretl' do
  version '2018b'
  sha256 'f51628416425bdc6242cf2d69ac7cac337e6aa6805e9a54a4ec3324091a6cfc2'

  url "https://downloads.sourceforge.net/gretl/gretl-#{version}-quartz.pkg"
  appcast 'https://sourceforge.net/projects/gretl/rss?path=/gretl'
  name 'gretl'
  homepage 'http://gretl.sourceforge.net/'

  pkg "gretl-#{version}-quartz.pkg"

  uninstall pkgutil: 'net.sourceforge.gretl.base.pkg'
end
