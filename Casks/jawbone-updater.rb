cask 'jawbone-updater' do
  version '2.2.5'
  sha256 '0db771816535cb9bb0112aa5e3ea7147b29322bf9dce82c90afedb36a62a2945'

  url "https://content.jawbone.com/store/dashboard/Jawbone_Updater-#{version}.pkg"
  name 'Jawbone Updater'
  homepage 'https://jawbone.com/'

  pkg "Jawbone_Updater-#{version}.pkg"

  uninstall quit:    'com.aliph.Jawbone_Updater',
            pkgutil: 'com.Aliph.[Jj]awbone(|Updater.*).pkg'
end
