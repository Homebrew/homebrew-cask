cask 'qsync-client' do
  version '3.3.3.0401'
  sha256 '2177fd9d1034de70b9aeaeca729bee42a5a4543f4195f77391a3bc72afedbb4b'

  url "https://download.qnap.com/Storage/Utility/QNAPQsyncClientMac-#{version}.dmg"
  appcast 'https://update.qnap.com/SoftwareRelease.xml'
  name 'Qnap Qsync'
  homepage 'https://www.qnap.com/i/in/utility/#block_3'

  installer manual: 'Qsync Client.pkg'

  uninstall pkgutil: 'com.qnap.qsync.*'
end
