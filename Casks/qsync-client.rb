cask 'qsync-client' do
  version :latest
  sha256 :no_check

  url 'https://download.qnap.com/webstart/QNAPQsync_Mac.dmg'
  name 'Qnap Qsync'
  homepage 'https://www.qnap.com/i/in/utility/#block_3'
  license :gratis

  pkg 'Qsync Client.pkg'

  uninstall pkgutil: 'com.qnap.qsync.*'
end
