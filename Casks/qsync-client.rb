cask 'qsync-client' do
  version '3.2.2.1121'
  sha256 '75e81092805c38ef61609f038b66c323e58e41254e9f5c268e8e2378a3b95861'

  url "https://download.qnap.com/Storage/Utility/QNAPQsyncClientMac-#{version}.dmg"
  name 'Qnap Qsync'
  homepage 'https://www.qnap.com/i/in/utility/#block_3'

  pkg 'Qsync Client.pkg'

  uninstall pkgutil: 'com.qnap.qsync.*'
end
