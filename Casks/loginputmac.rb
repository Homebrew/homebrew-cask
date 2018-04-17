cask 'loginputmac' do
  version '1.10'
  sha256 '88c34dc3bcc5067db6b7354d447579c477e802b99666e5ba1b556e1be606a57d'

  # nzhm461a0.qnssl.com was verified as official when first introduced to the cask
  url "https://nzhm461a0.qnssl.com/Installer.pkg#{version}.zip"
  appcast 'https://im.logcg.com/appcast.xml',
          checkpoint: 'a5571c83774d4f05a56fa35a5d5be9a96f0e12def3fa28af972a218f604bafc3'
  name 'LoginputMac'
  homepage 'https://im.logcg.com/loginputmac'

  auto_updates true

  pkg 'Installer.pkg'

  uninstall pkgutil: 'com.logcg.pkg.LoginputMac'
end
