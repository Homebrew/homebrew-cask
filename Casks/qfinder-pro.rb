cask 'qfinder-pro' do
  version '2.6.1.0104'
  sha256 '375575d39e63744ad44267e0683b3e17cdcc73227922e2473618a63c3c1b70f2'

  url "https://download.qnap.com/Storage/Utility/QNAPQfinderProMac-#{version}.dmg"
  appcast 'https://update.qnap.com/SoftwareRelease.xml'
  name 'Qnap Qfinder Pro'
  homepage 'https://www.qnap.com/en/utilities#utliity_5'

  pkg 'Qfinder Pro.pkg'

  uninstall pkgutil: 'qnap.com.qfinder.*'
end
