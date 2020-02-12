cask 'qsync-client' do
  version '3.3.6.0205'
  sha256 'ffc3b967cc2d45f7e3b9652dde9270c03272c2d99effa4d48284ba3d6cf16283'

  url "https://download.qnap.com/Storage/Utility/QNAPQsyncClientMac-#{version}.dmg"
  appcast 'https://update.qnap.com/SoftwareRelease.xml'
  name 'Qnap Qsync'
  homepage 'https://www.qnap.com/i/in/utility/#block_3'

  installer manual: 'Qsync Client.pkg'

  uninstall pkgutil: 'com.qnap.qsync.*'
end
