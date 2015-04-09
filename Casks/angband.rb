cask :v1 => 'angband' do
  version '3.5.1'
  sha256 'de8af2db62de6ce19034bcb5d542e9c161a069d5b240a77d9c0497cb473ea82c'

  url 'http://rephial.org/downloads/3.5/Angband-v3.5.1-osx.dmg'
  name 'Angband'
  homepage 'http://rephial.org'
  license :gpl

  app 'Angband.app'
end
