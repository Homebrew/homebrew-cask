cask 'fl-studio' do
  version '20.1.0.161'
  sha256 '65ac01099ea95ab26af57455ebf423468eec53314c1b8619268df574d9998512'

  url "http://demodownload.image-line.com/flstudio_mac_#{version}.dmg",
      user_agent: :fake
  appcast 'https://support.image-line.com/api.php?call=get_version_info&callback=il_get_version_info_cb&prod_type=undefined'
  name 'FL Studio'
  homepage 'https://www.image-line.com/flstudio/'

  pkg 'Install FL Studio.pkg'

  uninstall pkgutil: 'com.Image-Line.pkg.FLStudio64'
end
