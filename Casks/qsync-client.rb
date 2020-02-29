cask 'qsync-client' do
  version '3.3.5.1209'
  sha256 'dc4794193a1f6bc37abdda0618d2f140a93f1adb0704c2ea7266a2e198e518eb'

  url "https://download.qnap.com/Storage/Utility/QNAPQsyncClientMac-#{version}.dmg"
  appcast 'https://update.qnap.com/SoftwareRelease.xml'
  name 'Qnap Qsync'
  homepage 'https://www.qnap.com/i/in/utility/#block_3'

  installer manual: 'Qsync Client.pkg'

  uninstall pkgutil: 'com.qnap.qsync.*'
end
