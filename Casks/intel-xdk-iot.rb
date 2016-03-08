cask 'intel-xdk-iot' do
  version '1878'
  sha256 '009bfc7b24a2eede47ff408a41ae2b57a9c4944d8b2fd5a00e377c06dcf656ef'

  url "https://download.xdk.intel.com/iot-packages/iot_web_mac_master-iot_#{version}.dmg"
  name 'Intel XDK IoT Edition'
  homepage 'https://software.intel.com/en-us/html5/xdk-iot'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "xdk_full_#{version}.pkg"

  uninstall pkgutil: 'com.intel.pkg.xdk_new'
end
