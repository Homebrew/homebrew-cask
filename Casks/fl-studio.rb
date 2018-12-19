cask 'fl-studio' do
  version '20.1.0.161'
  sha256 'ddf89d9b9d9e2e0a180229ed27857cbf38fd6e19eb3a02d3079a736aff72c696'

  url "https://support.image-line.com/action/redirect/flstudio#{version.major}_mac_installer"
  appcast 'https://support.image-line.com/api.php?call=get_version_info&callback=il_get_version_info_cb&prod_type=undefined'
  name 'FL Studio'
  homepage 'https://www.image-line.com/flstudio/'

  pkg 'Install FL Studio.pkg'

  uninstall pkgutil: 'com.Image-Line.pkg.FLStudio64'
end
