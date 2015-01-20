cask :v1 => 'intel-xdk' do
  version '1621'
  sha256 '1206d823b00ecd172883b12b6a47df0f44bbb445172d5ce72a058f41669f1f6a'

  url "https://download.xdk.intel.com/xdk/xdk_web_mac_master_#{version}.dmg"
  name 'Intel XDK'
  homepage 'http://xdk-software.intel.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder
  tags :vendor => 'Intel'

  pkg "xdk_full_#{version}.pkg"

  uninstall :pkgutil => 'com.intel.pkg.xdk_new'
end
