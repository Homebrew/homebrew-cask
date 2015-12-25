cask 'ifunbox' do
  version '1.7'
  sha256 'fd5f3d312781a9f09b4b2b4f4c935c9577270f5d5fc14fac23d67fa9b56fffcc'

  url "http://dl.i-funbox.com/updates/ifunbox.mac/#{version}/ifunboxmac.dmg"
  appcast 'http://dl.i-funbox.com/updates/ifunbox.mac/update.xml',
          :sha256 => '8b0bbc299863a1e9cd198e6924c89e819283f74f59d6abd9d29ae8e1104677c3'
  name 'iFunBox'
  homepage 'http://www.i-funbox.com/'
  license :gratis

  app 'iFunBox.app'
end
