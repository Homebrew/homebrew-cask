cask :v1 => 'airy' do
  version '2.1.89'
  sha256 'e866ed9ac7bccbc00aebadb3ead80a378b0eedf023de9d8d8504dc6c2be7747a'

  url "http://www.eltima.com/download/airy-update/airy_#{version}.dmg"
  appcast 'http://mac.eltima.com/download/airy-update/airy.xml',
          :sha256 => 'a8e7d03bc1aa4b504ea280a08c7d10a12abff74f301495f759e6c3ca2f2a895b'
  name 'Airy'
  homepage 'http://mac.eltima.com/youtube-downloader-mac.html'
  license :commercial

  app 'Airy.app'

  uninstall :quit => 'com.eltima.Airy'

  zap :delete => '~/Library/Preferences/com.eltima.Airy.plist'
end
