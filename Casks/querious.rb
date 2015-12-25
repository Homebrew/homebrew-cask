cask 'querious' do
  version :latest
  sha256 :no_check

  url 'http://www.araelium.com/querious/downloads/Querious.dmg'
  appcast 'https://store.araelium.com/updates/querious',
          :sha256 => 'bce2cdb3059998d8918ee1fb0b59db1230d4029553c6d205015743a0e2df93d3'
  name 'Querious'
  homepage 'http://www.araelium.com/querious/'
  license :commercial

  app 'Querious.app'
end
