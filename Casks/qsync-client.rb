cask 'qsync-client' do
  version '3.3.2.1423'
  sha256 'bd1c69db5c6158068fa45b22729a2f91e8b887aafc2e2f4f528a8a7f06aaebc3'

  url "https://download.qnap.com/Storage/Utility/QNAPQsyncClientMac-#{version}.dmg"
  appcast 'https://update.qnap.com/SoftwareRelease.xml'
  name 'Qnap Qsync'
  homepage 'https://www.qnap.com/i/in/utility/#block_3'

  installer manual: 'Qsync Client.pkg'

  uninstall pkgutil: 'com.qnap.qsync.*'
end
