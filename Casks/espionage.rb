cask :v1 => 'espionage' do
  version :latest
  sha256 :no_check

  url 'https://www.espionageapp.com/Espionage.dmg'
  gpg "#{url}.sig",
      :key_url => 'https://www.taoeffect.com/other/A884B988.asc'
  name 'Espionage'
  homepage 'https://www.espionageapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Espionage.app'
end
