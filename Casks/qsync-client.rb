cask 'qsync-client' do
  version '3.3.4.0916'
  sha256 'f000324f5ff0f8c5f46d58133aa124701cc2e4399cec69e29a9066a397e08985'

  url "https://download.qnap.com/Storage/Utility/QNAPQsyncClientMac-#{version}.dmg"
  appcast 'https://update.qnap.com/SoftwareRelease.xml'
  name 'Qnap Qsync'
  homepage 'https://www.qnap.com/i/in/utility/#block_3'

  installer manual: 'Qsync Client.pkg'

  uninstall pkgutil: 'com.qnap.qsync.*'
end
