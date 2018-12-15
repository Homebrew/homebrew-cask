cask 'fl-studio' do
  version '20.1.0.161'
  sha256 '3f60763098ffd0fc245ddf78a508730e52f10659b66a8380e995839b88d67338'

  url "http://demodownload.image-line.com/flstudio_mac_#{version}.dmg"
  appcast 'https://support.image-line.com/api.php?call=get_version_info&callback=il_get_version_info_cb&prod_type=undefined'
  name 'FL Studio'
  homepage 'https://www.image-line.com/flstudio/'

  pkg 'Install FL Studio.pkg'

  uninstall pkgutil: 'com.Image-Line.pkg.FLStudio64'
end
