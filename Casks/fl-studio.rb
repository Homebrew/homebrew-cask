cask 'fl-studio' do
  version '20.1.1.175'
  sha256 '358d4d20ff9033cb6c41257d0faccc19cd22aebc7706ad6748827700907db1ee'

  url "https://support.image-line.com/action/redirect/flstudio#{version.major}_mac_installer"
  appcast 'https://support.image-line.com/api.php?call=get_version_info&callback=il_get_version_info_cb&prod_type=undefined'
  name 'FL Studio'
  homepage 'https://www.image-line.com/flstudio/'

  pkg 'Install FL Studio.pkg'

  uninstall pkgutil: 'com.Image-Line.pkg.FLStudio64'
end
