cask 'loginputmac' do
  version '1.9'
  sha256 'bbcab14fa4d067875427ad83275c13999e56ecfa0b02062615d1f0051de772b4'

  # nzhm461a0.qnssl.com was verified as official when first introduced to the cask
  url "https://nzhm461a0.qnssl.com/Installer.pkg#{version}.zip"
  appcast 'https://im.logcg.com/appcast.xml',
          checkpoint: '555618d888149a863b41ee3f97d10c2964f7554913351bf17084695e74ffbeb1'
  name 'LoginputMac'
  homepage 'https://im.logcg.com/loginputmac'

  auto_updates true

  pkg 'Installer.pkg'

  uninstall pkgutil: 'com.logcg.pkg.LoginputMac'
end
