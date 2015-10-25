cask :v1 => 'angband' do
  version '4.0.1'
  sha256 '965d70dfc4a104757da9faf311439be5aa11de0dc3fee4c4cb8732ed9ed878bf'

  url "http://rephial.org/downloads/#{version.to_f}/Angband-#{version}-osx.dmg"
  name 'Angband'
  homepage 'http://rephial.org'
  license :gpl

  app 'Angband.app'
end
