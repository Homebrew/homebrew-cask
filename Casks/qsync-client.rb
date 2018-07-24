cask 'qsync-client' do
  version '3.3.0.1904'
  sha256 '627d342d007817b2013cf148b29369ce3b2e92adad4b65abd5ab3a386d91d902'

  url "https://download.qnap.com/Storage/Utility/QNAPQsyncClientMac-#{version}.dmg"
  appcast 'http://update.qnap.com/SoftwareRelease.xml'
  name 'Qnap Qsync'
  homepage 'https://www.qnap.com/i/in/utility/#block_3'

  installer manual: 'Qsync Client.pkg'

  uninstall pkgutil: 'com.qnap.qsync.*'
end
