cask 'qfinder-pro' do
  version '2.4.0.0316'
  sha256 '379b6e6c6b8611cda3394ba34fb754b0a67a82694f0d935c270b0f746941eef2'

  url "http://download.qnap.com/Storage/Utility/QNAPQfinderProMac-#{version}.dmg"
  appcast 'http://update.qnap.com/SoftwareRelease.xml',
          checkpoint: '772710ef910a5786ba790ed6d963b7a9ae391d2459e18f65a631a4e0531935fd'
  name 'Qnap Qfinder Pro'
  homepage 'https://www.qnap.com/en/utilities#utliity_5'

  pkg 'Qfinder Pro.pkg'

  uninstall pkgutil: 'qnap.com.qfinder.*'
end
