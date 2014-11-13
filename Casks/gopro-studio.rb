cask :v1 => 'gopro-studio' do
  version '2.5.3.460'
  sha256 '870ede8a7f446caaf34690dcb623b2d3b193449575517339dca4ff81f07e2f9a'

  url "http://software.gopro.com/Mac/GoProStudio-#{version}.dmg"
  homepage 'http://shop.gopro.com/APAC/softwareandapp/gopro-studio/GoPro-Studio.html#/start=1'
  license :commercial

  pkg 'GoPro Studio.pkg'
  uninstall :pkgutil => 'com.GoPro.pkg.GoProStudio'
end
