cask :v1 => 'gopro-studio' do
  version '2.5.5.52'
  sha256 'cab72d115b6f0731cd18839547eae54fc77004a85d15f281b4493bad23affef6'

  url "http://software.gopro.com/Mac/GoProStudio-#{version}.dmg"
  name 'GoPro Studio'
  homepage 'https://shop.gopro.com/APAC/softwareandapp/gopro-studio/GoPro-Studio.html#/start=1'
  license :commercial

  pkg 'GoPro Studio.pkg'

  uninstall :pkgutil => 'com.GoPro.pkg.GoProStudio'
end
