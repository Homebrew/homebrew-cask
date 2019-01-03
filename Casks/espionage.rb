cask 'espionage' do
  version '3.7.1'
  sha256 '4d35f4ff294981c7d614b33b163eb0b0587eab6fb8fca0913e0ecc979000d74d'

  url 'https://www.espionageapp.com/Espionage.dmg'
  appcast "https://updates.taoeffect.com/espionage#{version.major}/appcast.xml"
  name 'Espionage'
  homepage 'https://www.espionageapp.com/'

  app 'Espionage.app'
end
