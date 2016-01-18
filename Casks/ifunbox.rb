cask 'ifunbox' do
  version '1.7'
  sha256 'fd5f3d312781a9f09b4b2b4f4c935c9577270f5d5fc14fac23d67fa9b56fffcc'

  url "http://dl.i-funbox.com/updates/ifunbox.mac/#{version}/ifunboxmac.dmg"
  appcast 'http://dl.i-funbox.com/updates/ifunbox.mac/update.xml',
          checkpoint: 'aea55a9e7a0f7e690afb5c40da92bbd703001fab7f843f971fc14e9319d19aaf'
  name 'iFunBox'
  homepage 'http://www.i-funbox.com/'
  license :gratis

  app 'iFunBox.app'
end
