cask :v1 => 'pleasesleep' do
  version :latest
  sha256 :no_check

  url 'http://www.dragonone.com/downloads/vault/macosx/PleaseSleep.dmg'
  homepage 'http://www.dragonone.com/products/macosx/pleasesleep/'
  license :unknown    # todo: improve this machine-generated value

  app 'PleaseSleep.app'
end
