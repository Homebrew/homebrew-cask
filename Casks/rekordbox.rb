class Rekordbox < Cask
  version '3.0.1'
  sha256 '6a0b04fcf2a0fdb4893a3a6efc07e6988e385dce187f1c08803a2b8699f1d95e'

  url 'http://rekordbox.com/_app/files/Install_rekordbox_3_0_1.pkg.zip'
  homepage 'http://rekordbox.com/en/'

  pkg 'Install_rekordbox_3_0_1.pkg'
  uninstall :pkgutil => 'com.pioneer.rekordbox.3.*',
            :files   => '/Applications/rekordbox 3/'
end
