cask 'pleasesleep' do
  version :latest
  sha256 :no_check

  url 'http://www.dragonone.com/downloads/vault/macosx/PleaseSleep.dmg'
  name 'PleaseSleep'
  homepage 'http://www.dragonone.com/products/macosx/pleasesleep/'
  license :gratis

  app 'PleaseSleep.app'
end
