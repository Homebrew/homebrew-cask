cask 'ifunbox' do
  version '1.7'
  sha256 'fd5f3d312781a9f09b4b2b4f4c935c9577270f5d5fc14fac23d67fa9b56fffcc'

  url "http://dl.i-funbox.com/updates/ifunbox.mac/#{version}/ifunboxmac.dmg"
  appcast 'http://dl.i-funbox.com/updates/ifunbox.mac/update.xml',
          :sha256 => 'c263e57abd0c544847ab54dd430bf4e968df8d7dbd00a6703137c6662f2a6b9c'
  name 'iFunBox'
  homepage 'http://www.i-funbox.com/'
  license :gratis

  app 'iFunBox.app'
end
