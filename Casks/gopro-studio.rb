cask :v1 => 'gopro-studio' do
  version '2.5.6.75'
  sha256 '4b632b35cb19aeff3091c1c34fb9ea698105b9b6e227d218245a0b13efe2d477'

  url "http://software.gopro.com/Mac/GoProStudio-#{version}.dmg"
  name 'GoPro Studio'
  homepage 'https://shop.gopro.com/APAC/softwareandapp/gopro-studio/GoPro-Studio.html#/start=1'
  license :commercial

  pkg 'GoPro Studio.pkg'

  uninstall :pkgutil => 'com.GoPro.pkg.GoProStudio'
end
