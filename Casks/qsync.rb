cask :v1 => 'qsync' do
  version '1.1.0.1219'
  sha256 '969ab4453a608e33c71f29f84e05ad10ff0aff33f147cf1376448196efb71670'

  url 'http://download.qnap.com/Storage/Utility/QNAPQsyncMac-1.1.0.1219.dmg'
  name 'Qsync'
  homepage 'http://www.qnap.com/'
  license :commercial

  pkg 'Qsync.pkg'

  uninstall :pkgutil => 'com.qnap.qsync.*'
end
