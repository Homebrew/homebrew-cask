cask :v1 => 'intel-xdk-iot' do
  version '52'
  sha256 'f8b378b36848245503127fc079a4dccf483aa949eb0b05ea0b7c50f0153b3db1'

  url "https://download.xdk.intel.com/iot-packages/iot_web_mac_master-iot_00#{version}.dmg"
  homepage 'https://software.intel.com/en-us/html5/xdk-iot'
  license :unknown    # todo: improve this machine-generated value

  pkg "xdk_full_#{version}.pkg"

  uninstall :pkgutil => 'com.intel.pkg.xdk_new'
end
