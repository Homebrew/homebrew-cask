class JawboneUpdater < Cask
  version '2.2.3'
  sha256 '3085edf935347e45573405ee7e51fbacce366847f5f06f783a4e1ea89d70aee6'

  url 'http://content.jawbone.com/store/dashboard/Jawbone_Updater-2.2.3.pkg'
  homepage 'http://jawbone.com/'

  pkg 'Jawbone_Updater-2.2.3.pkg'
  uninstall :quit => 'com.aliph.Jawbone_Updater',
            :pkgutil => 'com.Aliph.[Jj]awbone(|Updater.*).pkg'
end
