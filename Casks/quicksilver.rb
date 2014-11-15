cask :v1 => 'quicksilver' do
  version '1.2.0'
  sha256 '08c5aeaa7fe89427bcec30a9700eb0b7484bd68b647776b2c82c95355d1679d4'

  url 'http://cdn.qsapp.com/plugins/files/com.blacktree.Quicksilver__16399.dmg'
  homepage 'http://qsapp.com/'
  license :unknown

  app 'Quicksilver.app'
  zap :delete => [
                  '~/Library/Preferences/com.blacktree.Quicksilver.plist',
                  '~/Library/Application Support/Quicksilver',
                 ]
end
