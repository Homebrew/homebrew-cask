cask :v1 => 'pleasesleep' do
  version :latest
  sha256 :no_check

  url 'http://www.dragonone.com/downloads/vault/macosx/PleaseSleep.dmg'
  name 'PleaseSleep'
  homepage 'http://www.dragonone.com/products/macosx/pleasesleep/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'PleaseSleep.app'
end
