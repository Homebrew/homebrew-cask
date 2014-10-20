class Rekordbox < Cask
  version '3.0.1'
  sha256 '6a0b04fcf2a0fdb4893a3a6efc07e6988e385dce187f1c08803a2b8699f1d95e'

  url "http://rekordbox.com/_app/files/Install_rekordbox_#{version.gsub('.','_')}.pkg.zip"
  homepage 'http://rekordbox.com/en/'
  license :unknown

  pkg "Install_rekordbox_#{version.gsub('.','_')}.pkg"
  uninstall :pkgutil => 'com.pioneer.rekordbox.*',
            :delete  => '/Applications/rekordbox 3/'
end
