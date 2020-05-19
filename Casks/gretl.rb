cask 'gretl' do
  version '2020b'
  sha256 'a6537914d2e221b372c12261d224f14825563fe0bb69c7f980b16b277e09939e'

  # downloads.sourceforge.net/gretl/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gretl/gretl-#{version}-quartz.pkg"
  appcast 'https://sourceforge.net/projects/gretl/rss?path=/gretl'
  name 'gretl'
  homepage 'https://gretl.sourceforge.io/'

  pkg "gretl-#{version}-quartz.pkg"

  uninstall pkgutil: 'net.sourceforge.gretl.base.pkg'
end
