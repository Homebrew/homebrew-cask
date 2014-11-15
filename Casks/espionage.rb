cask :v1 => 'espionage' do
  version :latest
  sha256 :no_check

  url 'https://www.espionageapp.com/Espionage.dmg'
  gpg "#{url}.sig",
      :key_url => 'https://www.taoeffect.com/other/A884B988.asc'
  homepage 'https://www.espionageapp.com/'
  license :unknown

  app 'Espionage.app'
end
