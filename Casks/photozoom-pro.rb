cask 'photozoom-pro' do
  version '7'
  sha256 :no_check # required as upstream package is updated in-place

  url "http://files.benvista.com/PhotoZoom_Pro_#{version}.dmg"
  name 'PhotoZoom Pro'
  homepage 'https://www.benvista.com/photozoompro'

  pkg "PhotoZoom Pro #{version} Installer.mpkg"

  uninstall pkgutil: "com.benvista.pkg.PhotoZoom-Pro-#{version}.app"
end
