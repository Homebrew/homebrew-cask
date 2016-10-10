cask 'adventure' do
  version '2.1'
  sha256 '743c6912a29cb225a4e44bdf59f65286fd00ada32e7747e83c8379bb532f9f5d'

  url 'http://www.lobotomo.com/products/downloads/Adventure.dmg'
  appcast 'http://www.lobotomo.com/products/Adventure/profileInfo.php',
          checkpoint: '22d2e51cd63dfb367f541216a9f0b8b52b8004cb3a481defe2c92c29741d46a8'
  name 'Adventure'
  homepage 'http://www.lobotomo.com/products/Adventure/'

  app 'Adventure.app'
end
