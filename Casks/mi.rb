cask :v1 => 'mi' do
  version '2.1.12r3'
  sha256 'e70fa0ee864d78848633acc332e96c20310f87ee50ee541a4b07eaa87cb2165b'

  url "http://www.mimikaki.net/download/mi#{version}.dmg"
  homepage 'http://www.mimikaki.net/'
  license :unknown

  app 'mi.app'
end
