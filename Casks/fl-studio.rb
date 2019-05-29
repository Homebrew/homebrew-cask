cask 'fl-studio' do
  version '20.1.2.210'
  sha256 'ea2a2bc1e2ba9722e0beb90c69caa53f29b925221b6c13536806d6554c533118'

  url "https://support.image-line.com/action/redirect/flstudio#{version.major}_mac_installer"
  appcast 'https://support.image-line.com/api.php?call=get_version_info&callback=il_get_version_info_cb&prod_type=undefined'
  name 'FL Studio'
  homepage 'https://www.image-line.com/flstudio/'

  pkg 'Install FL Studio.pkg'

  uninstall pkgutil: 'com.Image-Line.pkg.FLStudio64'
end
