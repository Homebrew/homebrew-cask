cask :v1 => 'spear' do
  version :latest
  sha256 :no_check

  url 'http://www.klingbeil.com/spear/downloads/files/SPEAR_latest.dmg'
  name 'Spear'
  homepage 'http://www.klingbeil.com/spear'
  license :gratis

  app 'SPEAR.app'
end
