cask 'espionage' do
  version :latest
  sha256 :no_check

  url 'https://www.espionageapp.com/Espionage.dmg'
  appcast 'https://updates.taoeffect.com/espionage3/appcast.xml',
          :checkpoint => '52e10849eb03fa552293aca733797366418af5fb28eb7da166d557f3fec41abf'
  name 'Espionage'
  homepage 'https://www.espionageapp.com/'
  license :commercial
  gpg "#{url}.sig",
      :key_url => 'https://www.taoeffect.com/other/A884B988.asc'

  app 'Espionage.app'
end
