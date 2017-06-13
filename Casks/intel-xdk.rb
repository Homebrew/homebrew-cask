cask 'intel-xdk' do
  version '3641'
  sha256 '303bf88cdf8153b8e4706274b04c3c7b4991ad7b953ee3714bab11df0d956179'

  # xdk2-installers.s3.amazonaws.com/xdk was verified as official when first introduced to the cask
  url "https://xdk2-installers.s3.amazonaws.com/xdk/xdk_web_mac_master_#{version}.dmg"
  name 'Intel XDK'
  homepage 'https://software.intel.com/en-us/intel-xdk'

  pkg "xdk_full_#{version}.pkg"

  uninstall pkgutil: 'com.intel.pkg.xdk_new'
end
