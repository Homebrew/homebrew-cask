cask 'qsync-client' do
  version '3.2.3.0130'
  sha256 'fb4693289ff02217fdd92366e4160825948711500588547fb116cef0f714b191'

  url "https://download.qnap.com/Storage/Utility/QNAPQsyncClientMac-#{version}.dmg"
  appcast 'http://update.qnap.com/SoftwareRelease.xml',
          checkpoint: '0be220a5b3cfc50ff612274dd0beeba199e1592b13e7cd479b9ca553bcd8cbf5'
  name 'Qnap Qsync'
  homepage 'https://www.qnap.com/i/in/utility/#block_3'

  pkg 'Qsync Client.pkg'

  uninstall pkgutil: 'com.qnap.qsync.*'
end
