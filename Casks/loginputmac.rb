cask 'loginputmac' do
  version '1.7'
  sha256 '4b55e41038db800efbe96c35549325d74a0d65b2560cefe6634e6e24b069be75'

  # nzhm461a0.qnssl.com/Installer was verified as official when first introduced to the cask

  url "https://nzhm461a0.qnssl.com/Installer#{version}.pkg.zip"
  appcast 'https://im.logcg.com/appcast.xml',
          checkpoint: 'c0108df60cad2b2ecca8ffdad0c85631448466222dec29b3d394308019617b0a'
  name 'LoginputMac'
  homepage 'https://im.logcg.com/loginputmac'

  auto_updates true

  pkg 'Installer.pkg'

  uninstall pkgutil: 'com.logcg.pkg.LoginputMac'
end
