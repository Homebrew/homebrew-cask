cask 'loginputmac' do
  version '1.8'
  sha256 '7780424e54aa2356bcb4aa9ad22c9933d6635e7dffe738440baf982c921bd0d6'

  # nzhm461a0.qnssl.com was verified as official when first introduced to the cask
  url "https://nzhm461a0.qnssl.com/Installer.pkg#{version}.zip"
  appcast 'https://im.logcg.com/appcast.xml',
          checkpoint: '572d6eb014c4b3a9512370cf7c89d3c3c6015be4c2f31f01c40ba1f012d9914a'
  name 'LoginputMac'
  homepage 'https://im.logcg.com/loginputmac'

  auto_updates true

  pkg 'Installer.pkg'

  uninstall pkgutil: 'com.logcg.pkg.LoginputMac'
end
