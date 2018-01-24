cask 'qsync-client' do
  version '3.2.2.1121'
  sha256 '75e81092805c38ef61609f038b66c323e58e41254e9f5c268e8e2378a3b95861'

  url "https://download.qnap.com/Storage/Utility/QNAPQsyncClientMac-#{version}.dmg"
  appcast 'http://update.qnap.com/SoftwareRelease.xml',
          checkpoint: 'fc69d5d12b4c7ff159272f6cf44cadfe4788bb1480b1e5672d47bdd6699c6911'
  name 'Qnap Qsync'
  homepage 'https://www.qnap.com/i/in/utility/#block_3'

  pkg 'Qsync Client.pkg'

  uninstall pkgutil: 'com.qnap.qsync.*'
end
