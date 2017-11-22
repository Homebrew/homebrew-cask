cask 'qfinder-pro' do
  version '2.4.5.1030'
  sha256 '0a8eb9c709053cce94d469597a86634ccfcfa2adeeb8de068389c7579a3ae6b5'

  url "http://download.qnap.com/Storage/Utility/QNAPQfinderProMac-#{version}.dmg"
  appcast 'http://update.qnap.com/SoftwareRelease.xml',
          checkpoint: 'fec331a4d3860734eb0806f06f632b94366430ed1ede024703ca6fa5c761ed0b'
  name 'Qnap Qfinder Pro'
  homepage 'https://www.qnap.com/en/utilities#utliity_5'

  pkg 'Qfinder Pro.pkg'

  uninstall pkgutil: 'qnap.com.qfinder.*'
end
