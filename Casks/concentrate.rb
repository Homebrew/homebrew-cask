cask :v1 => 'concentrate' do
  version '1.2.2'
  sha256 '16e9ad16b915b98460a66553d1ec8eef20fece7d53ae50701b6e3ac048aba47e'

  url "http://www.getconcentrating.com/builds/concentrate.#{version}.zip"
  appcast 'http://getconcentrating.com/concentrate_appcast.xml',
          :sha256 => '8f47c0fb41386b632a27d1e1a5528238be72339932e1035b6ad6a822f263411b'
  homepage 'http://www.getconcentrating.com/'
  license :unknown

  app 'Concentrate.app'
  zap :delete => '~/Library/Application Support/Concentrate/Concentrate.sqlite3'
end
