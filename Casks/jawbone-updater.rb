cask :v1 => 'jawbone-updater' do
  version '2.2.4'
  sha256 '2e9184cde74779f75c6827e0fcf021230da3f6aad48fd1f3d293e5e355264f7d'

  url "http://content.jawbone.com/store/dashboard/Jawbone_Updater-#{version}.pkg"
  name 'Jawbone Updater'
  homepage 'https://jawbone.com/'
  license :gpl

  pkg "Jawbone_Updater-#{version}.pkg"

  uninstall :quit => 'com.aliph.Jawbone_Updater',
            :pkgutil => 'com.Aliph.[Jj]awbone(|Updater.*).pkg'
end
