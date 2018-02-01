cask 'loginputmac' do
  version '1.7'
  sha256 '442baaabb5d3e9e160815e24cc01595907a9e650dffc0d7fc0b63b314b9cec25'

  # nzhm461a0.qnssl.com was verified as official when first introduced to the cask
  url "https://nzhm461a0.qnssl.com/Installer.pkg#{version}.zip"
  appcast 'https://im.logcg.com/appcast.xml',
          checkpoint: 'c0108df60cad2b2ecca8ffdad0c85631448466222dec29b3d394308019617b0a'
  name 'LoginputMac'
  homepage 'https://im.logcg.com/loginputmac'

  auto_updates true

  pkg 'Installer.pkg'

  uninstall pkgutil: 'com.logcg.pkg.LoginputMac'
end
