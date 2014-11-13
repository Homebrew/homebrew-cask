cask :v1 => 'jawbone-updater' do
  version '2.2.3'
  sha256 '3085edf935347e45573405ee7e51fbacce366847f5f06f783a4e1ea89d70aee6'

  url "http://content.jawbone.com/store/dashboard/Jawbone_Updater-#{version}.pkg"
  homepage 'http://jawbone.com/'
  license :unknown

  pkg "Jawbone_Updater-#{version}.pkg"
  uninstall :quit => 'com.aliph.Jawbone_Updater',
            :pkgutil => 'com.Aliph.[Jj]awbone(|Updater.*).pkg'
end
