cask 'intel-xdk-iot' do
  version '3491'
  sha256 'ef4b9b3287790b2688ab17791b5737710bb07b9c634e19e42941a9c30e6deb46'

  # xdk2-installers.s3.amazonaws.com/iot was verified as official when first introduced to the cask
  url "https://xdk2-installers.s3.amazonaws.com/iot/xdk_web_mac_master_#{version}.dmg"
  name 'Intel XDK IoT Edition'
  homepage 'https://software.intel.com/iot/tools-ide/ide/xdk'

  pkg "xdk_full_#{version}.pkg"

  uninstall pkgutil: 'com.intel.pkg.xdk_new'
end
