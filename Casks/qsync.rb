cask :v1 => 'qsync' do
  version :latest
  sha256 :no_check

  name 'Qsync'
  url 'https://download.qnap.com/webstart/QNAPQsync_Mac.dmg'
  homepage 'https://www.qnap.com/i/in/utility/#block_3'
  license :gratis
  tags :vendor => 'Qnap'

  pkg 'Qsync.pkg'

  uninstall :pkgutil => 'com.qnap.qsync.*'
end
