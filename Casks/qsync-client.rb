cask 'qsync-client' do
  version '3.4.0.0416'
  sha256 '704638070a9e557682ca19c1aa62f6496fdc86ff3aa918b55d32ade859415aad'

  url "https://download.qnap.com/Storage/Utility/QNAPQsyncClientMac-#{version}.dmg"
  appcast 'https://update.qnap.com/SoftwareRelease.xml'
  name 'Qnap Qsync'
  homepage 'https://www.qnap.com/i/in/utility/#block_3'

  installer manual: 'Qsync Client.pkg'

  uninstall pkgutil: 'com.qnap.qsync.*'
end
