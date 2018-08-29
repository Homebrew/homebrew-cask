cask 'espionage' do
  version '3.6.6'
  sha256 '3bf87d0e9a85035a3e602f152644f47b52957bb097c9dbabbd66f33e6e3b1aa6'

  url 'https://www.espionageapp.com/Espionage.dmg'
  appcast "https://updates.taoeffect.com/espionage#{version.major}/appcast.xml"
  name 'Espionage'
  homepage 'https://www.espionageapp.com/'

  app 'Espionage.app'
end
