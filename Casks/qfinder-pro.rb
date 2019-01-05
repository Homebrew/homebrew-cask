cask 'qfinder-pro' do
  version '2.6.0.0214A'
  sha256 '545fa6703a1676e3dc6d0d01ec32de1f9a1abdf2299dd4c2c712bf97dc75051e'

  url "https://download.qnap.com/Storage/Utility/QNAPQfinderProMac-#{version}.dmg"
  appcast 'https://update.qnap.com/SoftwareRelease.xml'
  name 'Qnap Qfinder Pro'
  homepage 'https://www.qnap.com/en/utilities#utliity_5'

  pkg 'Qfinder Pro.pkg'

  uninstall pkgutil: 'qnap.com.qfinder.*'
end
