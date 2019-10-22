cask 'gretl' do
  version '2019b'
  sha256 'a8e434da68412b2edd91e852d7ecc6a08ac22d995a1911a5553bd6d1a4530363'

  # downloads.sourceforge.net/gretl was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gretl/gretl-#{version}-quartz.pkg"
  appcast 'https://sourceforge.net/projects/gretl/rss?path=/gretl'
  name 'gretl'
  homepage 'https://gretl.sourceforge.io/'

  pkg "gretl-#{version}-quartz.pkg"

  uninstall pkgutil: 'net.sourceforge.gretl.base.pkg'
end
