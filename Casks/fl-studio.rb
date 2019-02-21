cask 'fl-studio' do
  version '20.1.2.206'
  sha256 '996a424b4e8d4d886cd100cb70d63c3e368cbba11a96229bf734be862e075c72'

  url "https://support.image-line.com/action/redirect/flstudio#{version.major}_mac_installer"
  appcast 'https://support.image-line.com/api.php?call=get_version_info&callback=il_get_version_info_cb&prod_type=undefined'
  name 'FL Studio'
  homepage 'https://www.image-line.com/flstudio/'

  pkg 'Install FL Studio.pkg'

  uninstall pkgutil: 'com.Image-Line.pkg.FLStudio64'
end
