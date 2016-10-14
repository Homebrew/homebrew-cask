cask 'gopro-studio' do
  version '2.5.7.321'
  sha256 '63d875d8b6a2a715ada3224a5b81cb79d82199195f6f22e908c4c1455a3829c9'

  url "https://software.gopro.com/Mac/GoProStudio-#{version}.dmg"
  name 'GoPro Studio'
  homepage 'https://shop.gopro.com/APAC/softwareandapp/gopro-studio/GoPro-Studio.html#/start=1'

  pkg 'GoPro Studio.pkg'

  uninstall pkgutil: 'com.GoPro.pkg.GoProStudio'
end
