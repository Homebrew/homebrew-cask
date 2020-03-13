cask 'qsync-client' do
  version '3.3.6.0304'
  sha256 '99bd062f3ab40aeee537e6a1f09b0dd1e75799b6b43f6cdcdf7c1fc736c02494'

  url "https://download.qnap.com/Storage/Utility/QNAPQsyncClientMac-#{version}.dmg"
  appcast 'https://update.qnap.com/SoftwareRelease.xml'
  name 'Qnap Qsync'
  homepage 'https://www.qnap.com/i/in/utility/#block_3'

  installer manual: 'Qsync Client.pkg'

  uninstall pkgutil: 'com.qnap.qsync.*'
end
