cask :v1 => 'qsync' do
  version :latest
  sha256 :no_check

  url 'http://download.qnap.com/webstart/QNAPQsync_Mac.dmg'
  homepage 'http://www.qnap.com/'
  license :commercial

  pkg 'Qsync.pkg'

  uninstall :pkgutil => 'com.qnap.qsync.*'
end
