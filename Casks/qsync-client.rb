cask 'qsync-client' do
  version '3.2.1.1017'
  sha256 '59b51e7aa8b5a42f60d6ddfa780e8753d748365f2086d22b62bd6332c8ac188c'

  url "https://download.qnap.com/Storage/Utility/QNAPQsyncClientMac-#{version}.dmg"
  name 'Qnap Qsync'
  homepage 'https://www.qnap.com/i/in/utility/#block_3'

  pkg 'Qsync Client.pkg'

  uninstall pkgutil: 'com.qnap.qsync.*'
end
