cask :v1 => 'intel-xdk' do
  version '1878'
  sha256 '679d5fc0d155035680917a460b13d9f9c8a82312b90778e51a4a33311f665079'

  url "https://download.xdk.intel.com/xdk/xdk_web_mac_master_#{version}.dmg"
  name 'Intel XDK'
  homepage 'http://xdk-software.intel.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder
  tags :vendor => 'Intel'

  pkg "xdk_full_#{version}.pkg"

  uninstall :pkgutil => 'com.intel.pkg.xdk_new'
end
