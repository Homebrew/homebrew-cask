cask 'fl-studio' do
  version '20.5.0.1142'
  sha256 'f2e9989850f64a714550e1c8006af0ea488e106a96b795a37315bc1619d7cdfb'

  url "https://support.image-line.com/action/redirect/flstudio#{version.major}_mac_installer"
  appcast 'https://support.image-line.com/api.php?call=get_version_info&callback=il_get_version_info_cb&prod_type=undefined'
  name 'FL Studio'
  homepage 'https://www.image-line.com/flstudio/'

  pkg 'Install FL Studio.pkg'

  uninstall pkgutil: 'com.Image-Line.pkg.FLStudio64'
end
