cask 'delicious-library' do
  version '3.8.3'
  sha256 '67e895f25b1c29515a860c08070cbb073c76cd3beb32cb3cd115b8e52d88f61e'

  url "https://delicious-monster.com/downloads/DeliciousLibrary#{version.major}/v#{version}/DeliciousLibrary#{version.major}.zip"
  appcast "https://www.delicious-monster.com/downloads/DeliciousLibrary#{version.major}.xml"
  name 'Delicious Library'
  homepage 'https://delicious-monster.com/'

  app "Delicious Library #{version.major}.app"
end
