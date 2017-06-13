cask 'qfinder-pro' do
  version '2.4.2.0504'
  sha256 '89b6df837c64a0b47e6cd364564998e7b0ffa4e8ec2b35d60d51984a596c006f'

  url "http://download.qnap.com/Storage/Utility/QNAPQfinderProMac-#{version}.dmg"
  appcast 'http://update.qnap.com/SoftwareRelease.xml',
          checkpoint: '2c5836e9594de024e3f94c1ebca6e2e4a40d662af2256eaa1ed6598a5e4957eb'
  name 'Qnap Qfinder Pro'
  homepage 'https://www.qnap.com/en/utilities#utliity_5'

  pkg 'Qfinder Pro.pkg'

  uninstall pkgutil: 'qnap.com.qfinder.*'
end
