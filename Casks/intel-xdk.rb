class IntelXdk < Cask
  version '0769'
  sha256 '365a1850ccbf52fb3f1946bb569c454ccd6ea1a72d43074a9e92d9a646881489'

  url 'https://d2bnc8freht07j.cloudfront.net/xdk_web_mac_master_0769.dmg'
  homepage 'http://xdk-software.intel.com/'

  install 'xdk_full_0769.pkg'
  uninstall :pkgutil => 'com.intel.pkg.xdk_new'
end
