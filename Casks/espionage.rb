cask 'espionage' do
  version '3.7.0'
  sha256 '58e66ac38db30d30bc0f3c669167a13017724a93bb47409e8edb38fecafbe4ba'

  url 'https://www.espionageapp.com/Espionage.dmg'
  appcast "https://updates.taoeffect.com/espionage#{version.major}/appcast.xml"
  name 'Espionage'
  homepage 'https://www.espionageapp.com/'

  app 'Espionage.app'
end
