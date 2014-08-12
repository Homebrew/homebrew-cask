class Rekordbox < Cask
  version '3.0.0_2369'
  sha256 '5e3887ab45ea780307e6fabb6ff84cb836d60ad42ed1030df3e91010d994ba31'

  url 'http://dl.pioneer.jp/dl/rekordbox/mac/Install_rekordbox_3_0_0_2369.pkg.zip'
  homepage 'http://rekordbox.com/en/'

  install 'Install_rekordbox_3_0_0_2369.pkg'
  uninstall :pkgutil => 'com.pioneer.rekordbox.3.*',
    :files => '/Applications/rekordbox 3/'
end
