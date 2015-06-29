cask :v1 => 'gopro-studio' do
  version '2.5.4.514'
  sha256 '8db476dc843306cff510b29bf16367717fabb09cfcebbae8d287f17724585fd7'

  url "http://software.gopro.com/Mac/GoProStudio-#{version}.dmg"
  name 'GoPro Studio'
  homepage 'https://shop.gopro.com/APAC/softwareandapp/gopro-studio/GoPro-Studio.html#/start=1'
  license :commercial

  pkg 'GoPro Studio.pkg'

  uninstall :pkgutil => 'com.GoPro.pkg.GoProStudio'
end
