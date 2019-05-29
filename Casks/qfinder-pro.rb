cask 'qfinder-pro' do
  version '2.6.2.0306'
  sha256 '46d8e1af1723bbe6dcc0f1e9a59527045c5531ed57f6f4cb042013ee8bc819b2'

  url "https://download.qnap.com/Storage/Utility/QNAPQfinderProMac-#{version}.dmg"
  appcast 'https://update.qnap.com/SoftwareRelease.xml'
  name 'Qnap Qfinder Pro'
  homepage 'https://www.qnap.com/en/utilities#utliity_5'

  pkg 'Qfinder Pro.pkg'

  uninstall pkgutil: 'qnap.com.qfinder.*'
end
