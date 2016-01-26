cask 'intel-xdk' do
  version '2170'
  sha256 'f10e883140921ef3f9f9231b58fb7d1b1b092728bc68fd13e1fda4a209a57145'

  url "https://download.xdk.intel.com/xdk/xdk_web_mac_master_#{version}.dmg"
  name 'Intel XDK'
  homepage 'http://xdk-software.intel.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "xdk_full_#{version}.pkg"

  uninstall pkgutil: 'com.intel.pkg.xdk_new'
end
