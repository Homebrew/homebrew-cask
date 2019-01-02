cask 'qsync-client' do
  version '3.3.1.1123'
  sha256 '58bf8412f7f90c7339db2e1defd18bdcf0b340e9541f3ca4bd3826b3c1fcc1a0'

  url "https://download.qnap.com/Storage/Utility/QNAPQsyncClientMac-#{version}.dmg"
  appcast 'https://update.qnap.com/SoftwareRelease.xml'
  name 'Qnap Qsync'
  homepage 'https://www.qnap.com/i/in/utility/#block_3'

  installer manual: 'Qsync Client.pkg'

  uninstall pkgutil: 'com.qnap.qsync.*'
end
