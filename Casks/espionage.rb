cask 'espionage' do
  version :latest
  sha256 :no_check

  url 'https://www.espionageapp.com/Espionage.dmg'
  appcast 'https://updates.taoeffect.com/espionage3/appcast.xml',
          :sha256 => '6f8d57896c56a04c2311bf6cb6e08e0634f6b89d488d21ee698511a1a59435c6'
  name 'Espionage'
  homepage 'https://www.espionageapp.com/'
  license :commercial
  gpg "#{url}.sig",
      :key_url => 'https://www.taoeffect.com/other/A884B988.asc'

  app 'Espionage.app'
end
